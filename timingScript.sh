#!/bin/bash
alias julia="/Applications/Julia-0.3.11.app/Contents/Resources/julia/bin/julia"
echo 'Data' > results

for i in `seq 1 45`;
do
        echo  'calculate fib julia' $i
        printf  'calculate fib julia %d, ' $i >> results
        (time /Applications/Julia-0.3.11.app/Contents/Resources/julia/bin/julia recursiveFib.jl $i)  2>&1 > /dev/null |grep real >> results
done

for i in `seq 1 45`;
do
        echo  'calculate fib node' $i
        printf  'calculate fib node %d, ' $i >> results
        (time node recursiveFib.js $i)  2>&1 > /dev/null |grep real >> results
done



for i in `seq 1 45`;
do
        echo  'calculate fib python' $i
        printf  'calculate fib python %d, ' $i >> results
        (time python recursiveFib.py $i)  2>&1 > /dev/null |grep real >> results
done
