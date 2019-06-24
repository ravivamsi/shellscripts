#!/bin/bash

usage() {

echo "#########################################################"
echo "Usage $0 -s [<script.sh>]" 1>&2;
echo "########################################################"
exit 1;
}


while getopts ":s:" o; do
    case "${o}" in
        s)
            s=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${s}" ]; then
    usage
fi


sh $s
