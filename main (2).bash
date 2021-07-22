#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.


 echo enter number of elements of first array
read firstCount

echo enter elements of first array
for((i=1;i<=$firstCount;i++))
do
    echo -n "enter element$i:"
    read firstArray[$i]
done

echo enter number of elements of second array
read secondCount

totalCount=`expr $firstCount + $secondCount`
echo enter elements of second array
for((i=1;i<=$secondCount;i++))
do
    echo -n "enter element$i:"
    read secondtArray[$i]
done
i=1
j=1
k=1
while [ $i -le $firstCount ] && [ $j -le $secondCount ]
do
if [ ${firstArray[$i]} -le ${secondtArray[$j]} ]
then
    mergedArray[$k]=${firstArray[$i]}
    i=`expr $i + 1`
    k=`expr $k + 1`
else
    mergedArray[$k]=${secondtArray[$j]}
    j=`expr $j + 1`
    k=`expr $k + 1`
fi
done
while [ $i -le $firstCount ]
do
mergedArray[$k]=${firstArray[$i]}
    i=`expr $i + 1`
    k=`expr $k + 1`
done

while [ $j -le $secondCount ]
do
    mergedArray[$k]=${secondtArray[$j]}
    j=`expr $j + 1`
    k=`expr $k + 1`
done
echo The merged array is
for((i=1;i<=$totalCount;i++))
do
echo ${mergedArray[$i]}
done
nel=${#mergedArray[@]}
  if (( $nel % 2 == 1 )); then    
    val="${mergedArray[ $(($nel/2+1)) ]}"
  else                            
    (( j=nel/2 ))
    (( k=j-1 ))
    (( val=(${mergedArray[j]} + ${mergedArray[k]})/2 ))
  fi
  echo  "Median is " $val