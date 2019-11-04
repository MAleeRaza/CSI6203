#!/usr/bin/env bash


# SOFTWARE SOLUTION
# Author: Ali Raza
# Edith Cowan University, SYD Campus

errorMessage() {
    # error message to the console!
    echo "$1";
}

checkWeb() {
    # checking the nasa website is available
    if curl -Is "https://apod.nasa.gov" | head -1; then
        errorMessage "Website Found!"
    else
        errorMessage "Sorry! Website not available! "
        exit 1
    fi
}

# call the function checkWeb
checkWeb


######### Function to get the images using a given date ###########
######### the date is supplied in the command line arguments #########

curlWithDate() {
   
    if [[ -z "${TYPE}" && -z "${DETAILS}" ]]; then
        curl_result=$(curl -X GET -H "Content-type: application/json" "https://api.nasa.gov/planetary/apod?api_key=Yw2iqafW40Zl8HgFenfwXgq2bhZUkEhwzG31d8aC&date=${DATE}")
        # curl_result must be converted into an array
        curl_result=(${curl_result[@]})
        code=${curl_result[-1]}
        # get the content from the curl_result using arguments
        content=${curl_result[@]::${#curl_result[@]}}
        title=$(echo ${content} | jq '.title')
        # using parameters to get the url from the content 
        url=$(echo ${content} | jq '.url')
        # echo $code
        errorMessage "Connecting to nasa.gov ... Downloading : ${title}"
        # check the number of arguments
        if [[ "$#" -gt 2 ]]; then
            wget -O $3 ${url//\"/}
        else
            wget  ${url//\"/}
        fi
        # done
        errorMessage "Finished "
        
    fi
}

        ######### Function to connect to the main website ###########

getDetails() {
     
    errorMessage "Connecting to nasa.gov .. "
    # use curl to obtain the results
    curl_result=$(curl -X GET -H "Content-type: application/json" "https://api.nasa.gov/planetary/apod?api_key=Yw2iqafW40Zl8HgFenfwXgq2bhZUkEhwzG31d8aC&date=${DATE}")
    # result conversion into an array
    curl_result=(${curl_result[@]}) 
    code=${curl_result[-1]} 
    # obtains all the elements from the array
    content=${curl_result[@]::${#curl_result[@]}}
    # obtain a specific entity from the array
    title=$(echo ${content} | jq '.title')
    result=$(echo ${content} | jq '.explanation')
    cr=$(echo ${content} | jq '.copyright')

    # print out the results to the console
    errorMessage "TITLE : ${title} "
    errorMessage "EXPLANATION : ${result}"
    errorMessage "IMAGE CREDIT : ${cr}"
    errorMessage "Finished "
}

        ############# Function to Fetch and Show Result ############

showResult() {
    # function to obtain the images
    # curl
    curl_result=$(curl -X GET -H "Content-type: application/json" "https://api.nasa.gov/planetary/apod?api_key=Yw2iqafW40Zl8HgFenfwXgq2bhZUkEhwzG31d8aC&date=${iterate}")
    # an array of elements containing the results
    curl_result=(${curl_result[@]}) 
    # captures the last element
    code=${curl_result[-1]}
    # obtain each of the element from curl result
    content=${curl_result[@]::${#curl_result[@]}} 
    # obtain the elements from an array
    url=$(echo ${content} | jq '.url')
    errorMessage "Downloading ... ${url}"
    # download the image
    wget ${url//\"/}
    # iterate through the date
    iterate=$(date -d "${iterate} +1 day" +%Y-%m-%d)
    shift
}

ARGUMENTS=()

# command line arguments
# while loop
while [[ $# -gt 0 ]]
do
key="$1"

case ${key} in
    -d |--date)
    DATE="$2"
    if [[ "$#" -lt 2 ]]; then
        errorMessage "A date is required ! "
    else
        curlWithDate # call the function
    fi

    shift
    shift
    ;;
    --type|--explanation)
    # positional arguments
    TYPE="$2"
    DATE="$4"
    errorMessage "Connecting to nasa.gov .. "
    # get content using curl
    curl_result=$(curl -X GET -H "Content-type: application/json" "https://api.nasa.gov/planetary/apod?api_key=Yw2iqafW40Zl8HgFenfwXgq2bhZUkEhwzG31d8aC&date=${DATE}")
    # conversion of the results into an array
    curl_result=(${curl_result[@]})
    code=${curl_result[-1]}
    content=${curl_result[@]::${#curl_result[@]}}
    # obtain the result from the array
    result=$(echo ${content} | jq '.explanation')

    # print messages to the console
    echo ${result}
    errorMessage "Finished "

    shift # past argument
    shift # past value
    ;;
    -t|--details)
    DETAILS="$2"
    DATE="$4"
    
    # function call , to obtain the details about the given date
    # date is supplied in arguments
    # function call
    getDetails

    shift # past argument
    shift # past value
    ;;
     --range)
    RANGE="$#"
    errorMessage "Connecting to nasa.gov ... "
    # obtain end date from arguments
    end=$(date -d "$3" +%Y-%m-%d)
    # iterate through the dates
    iterate=$(date -d "$2" +%Y-%m-%d)
    i=0
    # contains a loop for the date
    until [[ ${iterate} == ${end} ]]; do
        ((i=i+1))
        # download ten images only maximum
        if [ $i -lt 11 ]
        then
           # function call
           showResult
        else
            break
        fi
    done
    # done
    errorMessage "Finished ... "
    break
    shift 
    shift
    ;;
    --default)
    DEFAULT=YES
    shift
    ;;
    *)   
    # obtain the argument and save it
    ARGUMENTS+=("$1")
    shift
    ;;
esac
done
