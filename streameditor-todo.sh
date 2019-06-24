#! /bin/bash

<<Usage

sed 'actions' <filename>

'actions' is for replacing the old word with new word

cat filename | sed 's/old/new/g'
cat filename | sed '3d'
cat filename | sed '1~2d'
cat filename | sed 's/$.appendatend/g'
cat filename | sed 's/^appendatstart/g'
cat filename | sed '/keyword/ s/oldword/newword/g'


Refer to the tutorial

https://www.youtube.com/watch?v=O0Z1ur81GuE


Usage



cat $1 | sed 's/active/inactive/g'

