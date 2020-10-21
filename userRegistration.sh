#! /bin/bash

#Author : Akash Suchak
#As a user need to enter a valid Last Name

shopt -s extglob

echo "Note : 1) Name Start With capital Letter "
echo "       2) Minimum 3 Characters required "

#Regular Expression
regEx="^[[:upper:]][[:alpha:]]{2,56}$"

#User-Input
read -p "Enter Last Name : " lastName

#Checking LastName is Valid or Not
if [[ $lastName =~ $regEx ]]; then
        echo "$lastName is Valid "
else
        echo "Wrong Input!! Try Again"
fi
