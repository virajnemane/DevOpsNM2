#!/bin/sh
NAME="Zara Ali"
readonly NAME
myname=$NAME    #able to assign value to other variable
echo $myname
echo $NAME
unset NAME      #can not unset
echo $?         #To check previous command executed successfully or not
echo $myname
echo $NAME
unset myname    #unset only remove existing value but keep blank line, variable wont get deleted
echo $myname
echo $?