#!\bin\bash

date "+%Y-%m-%d %H:%M:%S"

aug1=$1
aug2=$2

swap()
{
    eval value1=\$$1
    ptr1=$1

    eval value2=\$$2
    ptr2=$2

    eval $ptr1=$value2
    eval $ptr2=$value1
}

echo =========================================
echo the result 
echo the first augment is $aug1
echo the second augment is $aug2

eval swap aug1 aug2

echo after swap now 
echo the first augment is $aug1
echo the second augment is $aug2

python funcA.py $aug1 $aug2
x=`python -c 'import funcB; print(funcB.func_B())' $aug1 $aug2`
echo ==========================================
echo $x>python_result.data 
