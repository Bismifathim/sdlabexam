#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.


 cat number.txt | while read num
do

        if [ `echo "${num} % 2 ==0" | bc` -eq 0 ] 
        then  
                echo ${num} >> even.numbers.txt
        else
                echo ${num} >> odd.numbers.txt
        fi
done