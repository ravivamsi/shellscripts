#! /bin/bash

######################################################################################
#   Input Arguments: Filepath and mimetype
#   $ sh 13_checkfilemimetype.sh -f ./resources/checkmimetype.jpeg -t image/jpeg
######################################################################################

usage() {

echo "#########################################################"
echo "Usage: $ sh $0 -f <filename> -t <path>" 1>&2;
echo "########################################################"
exit 1;
}


while getopts ":f:t:" o; do
    case "${o}" in
        f)
            f=${OPTARG}
            ;;
        t)
            t=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${f}" ] || [ -z "${t}" ]; then
    usage
fi


file=$f
mimetype=$(file --mime-type -b "$file")

if [[ $(file --mime-type -b "$file") == "$t" ]]; then
    echo "$file has mimetype $t"
else
    echo "$file is not of mimetype $t, $file has mimetype $mimetype"
fi 