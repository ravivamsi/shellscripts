# Input Arguments: JSON Filename and Path
# For JSON Object: $ sh 12_parsejson.sh -f ./resources/parsejson.json -p .body
# For JSON Array: $ sh 12_parsejson.sh -f ./resources/parsejsonarray.json -p .[9].body

usage() {

echo "#########################################################"
echo "Usage: $ sh $0 -f <filename> -p <path>" 1>&2;
echo "########################################################"
exit 1;
}


while getopts ":f:p:" o; do
    case "${o}" in
        f)
            f=${OPTARG}
            ;;
        p)
            p=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${f}" ] || [ -z "${p}" ]; then
    usage
fi

content=$(<$f)

value= echo "$content" | jq "$p" 
echo $value