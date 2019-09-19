#!/bin/bash
echo "Enter a number:"
read -r numOne
echo "Enter a second number: "
read -r numTwo
sum=$(($numOne + $numTwo))
echo "The sum is: $sum"
let prod=numOne*numTwo
echo "The product is: $prod"
