# Description: Arithmetic Evaluation Commands in Bash Script

# The expr Command
# 1. The expr command is an OLD Unix program that can evaluate math.
# 2. While using expr command with other Unix command, use a back tick (`) sign before the expr keyword and end the
#    expr statement with another back tick (`). Please note that back tick (`) sign is different from a single quote
#    ie ' sign.
expr 6 + 4          # Prints 10. Space on either side of an operator is important.
expr 6+4            # Prints 6+4 as a string due to lack of space on either side of the operator.
echo `expr 6 + 3`   # Due to back tick, expr 6 + 3 is evaluated to 9, then echo command prints 9 as sum.

# The let Command
# 1. The let command is the shell built-in command for math operations.
# 2. The let command also relaxes the normal rule of needing a $ in front of variables to be read.
# 3. The let command is more forgiving towards the space.
let x=6+4
echo $x

# The Arithmetic expansion using ()
# 1. Arithmetic expansion allows the evaluation of an arithmetic expression and the substitution of the result.
# 2. This form is more forgiving about spaces.
echo $(( 5 + 4 ))
x=$(( 5 + 4 ))
echo $x

# The bc command
# 1. None of the above commands can do math with floating point numbers or anything fairly complicated. Use bc command
#    for complex mathematical solutions.
# 2. The variables should be treated as strings.
echo '5 + 5' | bc                           # Find the sum.
echo "scale=100; 4*a(1)" | bc -l -q         # Find the value of PI to 100 decimal places.
x=`echo "scale=100; 4*a(1)" | bc -l -q`     # Store the result in a variable.
echo $x

# TODO
# * None
