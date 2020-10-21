#! /bin/bash

#Author : Akash Suchak
#As a user need to enter a valid First Name


echo "Note : 1) Name Start With capital Letter "
echo "       2) Minimum 3 Characters required"

#User - Input
read -p "Enter First Name : " firstName

#Regular Expression
regEx="^[A-Z][a-zA-Z]{2,56}$"

#Checking UserInput is Valid or Not
if [[ $firstName =~ $regEx ]]; then
        echo "$firstName is Valid Name"
else
        echo "Wrong Input!! Try Again"
fi
