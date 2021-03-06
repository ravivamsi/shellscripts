#! /bin/bash

usage(){
	echo "#########################################################"
	echo "Usage $0 -l <limit>" 1>&2;
	echo "#########################################################"
    echo ""
	exit 1;
}

while getopts ":l:" o; do
    case "${o}" in
        l)
            l=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${l}" ]; then
    usage
fi


# Iteration Limit

# Begin Loop 


i=0

until [ $i -lt $l ]
do
    echo $i
    (($i++))
done