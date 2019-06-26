#! /bin/bash

#! /bin/bash

# Input Arguments: JSON Filename and Path
# For JSON Object: $ sh 12_parsejson.sh -f ./resources/parsejson.json -p .body
# For JSON Array: $ sh 12_parsejson.sh -f ./resources/parsejsonarray.json -p .[9].body

usage() {

echo "###################################################################################"
echo "Usage: $ sh $0 -i <inputformat> -d <date> -o <outputformat> -u <[uname]>" 1>&2;
echo "###################################################################################"
exit 1;
}


while getopts ":i:d:o:u:" v; do
    case "${v}" in
        i)
            i=${OPTARG}
            ;;
        d)
            d=${OPTARG}
            ;;
        o)
            o=${OPTARG}
            ;;
        u)
            u=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${i}" ] || [ -z "${d}" ] || [ -z "${o}" ] || [ -z "${u}" ]; then
    usage
fi




  if [[ "$u" == "Darwin" ]]; then
    # Mac OS X
    date -j -f "$i" "$d" +"$o"
  elif [[ "$u" == "Linux" ]]; then
    # Linux
    date -d "$d" +"$o"
  else
    # Unsupported system
    echo "Unsupported system"
  fi