#! /bin/bash

#Array
myarray=( 1 20.5 shakir "HELLO" )

#retrieve values 
echo "value in 3rd index ${myarray[3]}"



#retrieve all values , use *
echo "all values are ${myarray[*]}"

#find the lengthof array / no of values
echo "${#myarray[*]}"

#get 2 values from 2nd index 
echo "values from 2-4 are ${myarray[*]:2:2}"


