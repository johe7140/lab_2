#!/bin/bash
# Authors : Joshua Hepp
# Date: 2/1/2019

#Problem 1 Code:

#Get user regex and filename
echo "Enter a Regular Expression:"
read regex
echo "Enter a filename:"
read filename
grep -E $regex $filename

#Grep and count all numbers matching xxx-xxx-xxxx
echo "Total phone numbers:"
grep -Ec "\b[0-9]{3}[-][0-9]{3}[-][0-9]{4}\b" regex_practice.txt

#Grep and count all emails WITH numbers
echo "Total emails with numbers:"
grep -Ec "\b[A-Za-z0-9]+@[A-Za-z0-9]+\.[A-Za-z]+" regex_practice.txt

#Grep and count all emails WITHOUT numbers
echo "Total emails without numbers:"
grep -Ec "\b[A-Za-z]+@[A-Za-z]+\.[A-Za-z]+" regex_practice.txt

#Grep all numbers with 303 area code and store in phone_results.txt
grep -E "\b303[-][0-9]{3}[-][0-9]{4}" regex_practice.txt | tee phone_results.txt

#Grep for all @geocities.com emails and store in email_results.txt
grep -E "\b[A-Za-z0-9]+@geocities.com" regex_practice.txt | tee email_results.txt

#Grep command line entry : $1=regex, $2=filename and store in command_results.txt
grep $1 $2 | tee command_results.txt
