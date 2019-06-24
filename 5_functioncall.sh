#! /bin/bash

<<CallFunction
# 
# 
#
CallFunction


# call_function_to_process_user_details( $1 $2 $3 )
#&call_function_to_process_user_details(vamsi ravi vamsir)

<<Function
#
# Function definition
#
Function

call_function_to_process_user_details(){

	FIRSTNAME=$1
	LASTNAME=$2
	USERNAME=$3
	shift;shift;shift; 

	COMMENTS=$@
	
	echo "Processing ....."
	result= echo "User $FIRSTNAME, $LASTNAME has choosen the username $USERNAME"
	echo ".............End "

	return $result
}


call_function_to_process_user_details $1 $2 $3

