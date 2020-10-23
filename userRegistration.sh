#! /bin/bash

#Author : Akash Suchak
#As a user need to follow pre-defined Password Rules

shopt -s extglob

#Display example for user
echo "Note : Enter Password properly"
echo "-----------------------------"
echo "Rule:1 - Minimum 8 Characters"
echo "Rule:2 - Should have Atleast 1 Upper Case"
echo "Rule:3 - Should have Atleast 1 Numeric Number"
echo "Rule:4 - Should have 1 special Character"
echo "============================="

#User-Input
read -p "Enter Your Password : " pass

#Checking Password is Valid or Not
count=`echo ${#pass}`
if [[ $count -lt 8 ]];then
	echo "Password length should be 8 charactore"
	exit 1;
fi
echo $pass | grep "[A-Z]" | grep "[0-9]" | grep "[@#$%^&*-_.]"
if [[ $? -ne 0 ]];then

	echo "Password Must contain 1 upparcase, 1 Numeric Number, 1 Special Character"
	exit 2;
else
   echo "Password is Set"
fi

