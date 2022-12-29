#!/bin/bash
BLUE='\033[0;44m'
BLACK='\033[0;30m'
WHITE='\033[0;30;47m'

touch MaryamBMI.txt

echo -e "Name	Weight	Height	BMI \n" >> MaryamBMI.txt

echo -e "${BLUE}Welecom to this program, ${WHITE}In this program we read weight and height of 4 person ${BLUE}and show their BMI and AVG of BMI (:"

echo -e "${WHITE}Enter name of your friend${BLUE}"

read -r name1 name2 name3 name4

echo -e "${WHITE}Enter weight of your friend${BLUE}"

read -r weight1 weight2 weight3 weight4

echo -e "${WHITE}Enter height of your friend${BLUE}"

read -r height1 height2 height3 height4

#calc BMI 1
metr_height1=$(awk -v h="$height1" 'BEGIN { print h/100 }')

pow_height1=$(awk -v h="$metr_height1" 'BEGIN { print h*h }')

BMI1=$(awk -v w="$weight1" -v h="$pow_height1" 'BEGIN { print w/h }')

BMI1=$(awk -v b="$BMI1" 'BEGIN { print int(b) }')

#calc BMI 2
metr_height2=$(awk -v h="$height2" 'BEGIN { print h/100 }')

pow_height2=$(awk -v h="$metr_height2" 'BEGIN { print h*h }')

BMI2=$(awk -v w="$weight2" -v h="$pow_height2" 'BEGIN { print w/h }')

BMI2=$(awk -v b="$BMI2" 'BEGIN { print int(b) }')

#calc BMI 3
metr_height3=$(awk -v h="$height3" 'BEGIN { print h/100 }')

pow_height3=$(awk -v h="$metr_height3" 'BEGIN { print h*h }')

BMI3=$(awk -v w="$weight3" -v h="$pow_height3" 'BEGIN { print w/h }')

BMI3=$(awk -v b="$BMI3" 'BEGIN { print int(b) }')

#calc BMI 4
metr_height4=$(awk -v h="$height4" 'BEGIN { print h/100 }')

pow_height4=$(awk -v h="$metr_height4" 'BEGIN { print h*h }')

BMI4=$(awk -v w="$weight4" -v h="$pow_height4" 'BEGIN { print w/h }')

BMI4=$(awk -v b="$BMI1" 'BEGIN { print int(b) }')

echo -e "$name1	$weight1	$height1	$BMI1 \n" >> MaryamBMI.txt

echo -e "$name2	$weight2	$height2	$BMI2 \n" >> MaryamBMI.txt

echo -e "$name3	$weight3	$height3	$BMI3 \n" >> MaryamBMI.txt

echo -e "$name4	$weight4	$height4	$BMI4 \n" >> MaryamBMI.txt

echo "Data save in MaryamBMI.txt"

#**************** Get AVG ****************

BMIAVG=$(awk -v bmi1="$BMI1" -v bmi2="$BMI2" -v bmi3="$BMI3" -v bmi4="$BMI4" 'BEGIN { print (bmi1+bmi2+bmi3+bmi4)/4 }')

echo -e "${RED}Avg avg of your fiend js:\n" >> MaryamBMI.txt

echo -e $BMIAVG >> MaryamBMI.txt
