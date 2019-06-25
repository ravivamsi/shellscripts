# Input Arguments: XML Filename and XPath

usage() {

echo "#########################################################"
echo "Usage: $ sh $0 -f <filename> -p <xpath>" 1>&2;
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
cmdbuilder="xmllint --xpath $p $f"

xmlvalue=`$cmdbuilder`

echo $xmlvalue
