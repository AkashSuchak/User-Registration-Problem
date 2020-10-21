#! /bin/bash

#Author : Akash Suchak
#As a user need to enter a valid Email

shopt -s extglob

#Regular Expression
regEx="^[a-zA-Z0-9+_.-]+@[a-zA-Z.]+\.+[a-zA-Z]{2,4}$"

#User-Input
read -p "Enter Valid Email-Id : " email

#Checking Email is Valid or Not
if [[ $email =~ $regEx ]]; then
        echo "$email is Valid "
else
        echo "Invalid Email-Id !! Try Again"
fi
