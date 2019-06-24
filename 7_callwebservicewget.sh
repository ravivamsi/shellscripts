#! /bin/bash


wget --method=GET https://jsonplaceholder.typicode.com/posts/1 -O ./output/result.log
wget --method=POST https://jsonplaceholder.typicode.com/posts --header="Content-Type: application/json" --body-file=./resources/callwebservicewgetpostinput.json -O ./output/result2.log
