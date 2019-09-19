#!/bin/bash
# Authors : Xinghan Chen
# Date: 9/18/2019


#Step-1 Read User input
echo "Please input filename:"
read -r fileName
echo "Please input regular expression:"
read -r regex
#Step-2 Run Regex on user input
echo "-----------------------"
echo "Output user regex($regex) in user file($fileName)"
grep -E "$regex" "$fileName"
echo "-----------------------"


#Step-3 output all phone number in txt
echo "Output the number of phone numbers"
grep -c -E "^[0-9]{3,3}[-]{1,1}[0-9]{3,3}[-]{1,1}[0-9]{4,4}$" regex_practice.txt
echo "-----------------------"
echo "Output the number of emails"
grep -c -E "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" regex_practice.txt

echo "-----------------------"
echo "Output phone numbers start with 303"
grep -o -E "^303[-]{1,1}[0-9]{3,3}[-]{1,1}[0-9]{4,4}$" regex_practice.txt
echo "-----------------------"
echo "Writing email_result.txt"
grep geocities.com regex_practice.txt >> email_result.txt
echo "-----------------------"
echo "Run git add email_result.txt"
git add email_result.txt
git commit -m "email result upload"
git push origin master 
