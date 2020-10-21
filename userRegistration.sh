#! /bin/bash

#Author : Akash Suchak
#As a user need to follow pre-defined Password Rules

shopt -s extglob

#Regular Expression
regEx="[0-9a-zA-z#*-_.@ ]{8,}$"

#Display example for user
echo "Note : Enter Password properly"
echo "-----------------------------"
echo "Rule:1 - Minimum 8 Characters"
echo "============================="

#User-Input
read -p "Enter Valid Password : " pwd

#Checking Password is Valid or Not
if [[ $pwd =~ $regEx ]]; then
        echo "Password Entered Correctly"
else
        echo "Invalid Passord !! Try Again"
fi
