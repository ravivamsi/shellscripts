#! /bin/bash 

<<CallWebservice

You can call the webservice using the curl library in shell 

$ sh 3_callwebservice.sh 

or 

$ ./3_callwebservice.sh


CallWebservice
 
output=$(curl -s -k -X GET "https://jsonplaceholder.typicode.com/posts/1") 

echo $output
