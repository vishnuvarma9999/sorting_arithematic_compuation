#!/bin/bash
#Welcome to Compute the Arthematic
read -p "Enter the value for a :" a
read -p "Enter the value for b : " b
read -p "Enter the value for c : " c

echo "The Value for a is :"$a;
echo "The Value for b is :"$b;
echo "The Value for c is :"$c;

#compute (a + b *c) uc2
computedValueForUCTwo=$(( a + b * c ));
echo " uc2 output of (a + b * c) : "$computedValueForUCTwo;

#compute (a * b + c) uc3
computedValueForUCThree=$(( a * b + c ));
echo " uc3 output of (a * b + c): "$computedValueForUCThree;

#compute (c + a / b) uc4
computedValueForUCFour=$(( c + a / b ));
echo  " uc4 output of (c + a / b) : "$computedValueForUCFour;

#compute (a % b + c) uc5
computedValueForUCFive=$(( a % b + c ));
echo " uc5 output of (a % b + c) : "$computedValueForUCFive;

#Storing results in dictionary and displaying them uc6
declare -A ucDict

ucDict[uc1]=$computedValueForUCTwo;
ucDict[uc2]=$computedValueForUCThree;
ucDict[uc3]=$computedValueForUCFour;
ucDict[uc4]=$computedValueForUCFive;
echo "Storing the results in dictionary"
echo "${ucDict[*]}";

#storing results in Array and displaying them uc7
declare -i ucArray

ucArray[1]=ucDict[uc1];
ucArray[2]=ucDict[uc2];
ucArray[3]=ucDict[uc3];
ucArray[4]=ucDict[uc4];
echo "Storing the results in array"
echo "${ucArray[*]}";

#use-case 8 sorting the array data in descending order
echo "Sorting the dictionary data in Descending order"
echo "desc order:"
        IFS=$'\n';
        sortedDescDict=`echo "${ucArray[*]}" | sort -n -r `;
        echo $sortedDescDict;

#use-case 9 sorting the dictionary data in assending order
echo "Sorting the dictionary data in ascending order"
echo "asc order : "
        IFS=$'\n';
        sortedAscDict=`echo "${ucArray[*]}" | sort -n `;
        echo $sortedAscDict;
