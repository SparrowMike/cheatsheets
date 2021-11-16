#! /bin/bash

#1. Comments 
: '
Can simply print passed argument with echo ==> echo 'HelloWolrd'
Single arror bracket will replace ==> cat > cat.txt 
Double arror bracket will append ==> cat >> cat.txt
'

# cat >> cat.txt

#2. HereDoc allows you to pass multiline block of TEXT or CODE.
: '
cat << multiLine
This will allow you,
to have as many lines
as needed.
multiLine
'

#3. Conditional statements

# Comparison Operators in bash
# -eq, -ne, -gt, -ge, -lt, -le ==> when inside square bracker []
# ===, !==, >, >=, <, <= ==> when inside double parentheses (()) 

: '
count=10
if [ $count -eq 1 ];
then
    echo 'the first condition is true'
elif (( $count > 9 ))
then
    echo 'the second condition is true'
else 
    echo 'the condition is false'
fi
'

#? Dollar signs, spaces, ampersands, asterisks and other special characters are all ignored when enclosed within single quotes.

age=30
#4. Logical Operators
# AND ==> [ x ] && [ y ] same as [ x -a y ] and same as [[ x && y ]]
# OR ==> ||, -o

: ' 
if [ "$age" -gt 18 ] && [ "$age" -lt 29 ] 
then
    echo "Age is correct"
else
    echo "Age is not correct"
fi
'
#5. CASE Conditional Statment
: '
car="Audi"
case $car in 
    "BMW" )
        echo "It's BMW" ;;
    "Audi" )
        echo "It's Audi" ;;
    * )
        echo "Unknown car name" ;;
esac '

#6. Loops
## WHILE
: '
number=1
while [ $number -lt 10 ]
do
    echo "While loop => $number"
    number=$(( number+1 ))
done

### UNTIL
number2=1
until [ $number2 -gt 10 ]
do
    echo "Unitl => $number2"

    number2=$(( number2+1 ))
done

### FOR
for i in 1 2 3 4 5
do
    echo $i
done

### for loop alternative
for i in {0..10..2} # {start..ending..increment}
do
    echo "hello zsh $i"
done

above does not work on osx? use below  as alternative

### for bash below v3 use below
for i in $(seq 1 2 20)
do
   echo "Welcome $i times"
done


### most common for loop
for (( i=0; i<9; i++ ));
do 
    echo "$i egg"
done

## BREAK and CONTINUE statments
for (( i=0; i<=10; i++ ))
do
    if [ $i -eq 3 ] || [ $i -eq 7 ]
    then
        continue # will skip 3 and 7, break would simply stop at 2
    fi
    echo $i
done
'

#7. Script input (STDIN)

# args=("$@") # unlimited number of inputs
# echo $0 $1 $2 $2
# echo ${args[1]} ${args[2]} ${args[3]} 
# echo $args
# echo $# ==> # prints the length of the array-starts from 1

: '
while read line
do
    echo "$line"
done < "${1:-/dev/stdin}" 
'

#8. Script output (STDOUT and STDERR)

# ls -al >file1.txt 2>&1 <== same as ==>ls -al >&file1.txt

#9. Pipes

: '
MESSAGE="Hello World"
export MESSAGE
./message.sh

# sample from the other file
echo "The message from helloBash.sh is $MESSAGE"
'

#10. String processing

echo "enter 1st string"
read st1

echo "enter 2nd string"
read st2

if [ "$st1" == "$st2" ]
then 
    echo "string match"
else
    echo "string don't match"
fi



