#! /bin/zsh

#1. Commets 
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
to have a many lines
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
: '
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
'

for (( i=0; i<9; i++ ));
do 
    echo "$i egg"
done


