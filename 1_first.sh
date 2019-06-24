#! /bin/bash

# Always first line should start with hash(#) bang(!) shebang in shortcut and path to the bash binary  

<<FirstProgram
Always save the shell scripts with .sh extension 
You can run the shell scripts as below

$ sh first.sh 

or 

$ chmod 755 first.sh && ./first.sh 
FirstProgram

# You can run the commands as below and have comments included after the command as well
echo Hello                             World        # This is a comment, too!

# You can pass the variables to the double quotes
echo "Hello $1, this is my $0 program"

<<MultiLineComments
 You can't play around single quotes
 Anything that is in single quotes('  ') is a string 
MultiLineComments

echo '"Hello World"'
