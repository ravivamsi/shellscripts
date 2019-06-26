#! /bin/bash

usage() {
    echo "#########################################################"
    echo "Usage: $ sh $0 -v <value> -p <pattern>" 1>&2;
    echo "########################################################"
    exit 1;
}


while getopts ":v:p:" o; do
    case "${o}" in
        v)
            v=${OPTARG}
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

if [ -z "${v}" ] || [ -z "${p}" ]; then
    usage
fi


if [[ "$v" =~ $p ]]
then
    echo "Value $v match pattern $p"
else
    echo "Value $v doesn't match pattern $p"
fi