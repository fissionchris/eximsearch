# :------------------------------------::------------------------------------: #
# Multi-arg in script
# How can I pass all arguments my bash script has received to it? 
# The number of params is variable, so I can't just hardcode the arguments passed like this:
abc $1 $2 $3 $4

# Use the "$@" variable, which expands to all command-line parameters separated by spaces.
abc "$@"
# :------------------------------------::------------------------------------: #


# :------------------------------------::------------------------------------: #
# send multi-args to script

args=("$@")
echo Number of arguments: $#
echo First argument: ${args[1]}
# $# is the number of arguments received by the script. 
# I find easier to access them using an array: the args=("$@") line puts 
# all the arguments in the args array. To access them use ${args[index]}.
# :------------------------------------::------------------------------------: #


# :------------------------------------::------------------------------------: #
# test for null variable/arg
# This will return true if a variable is unset or set to the empty string ("").
if [ -z "$VAR" ];
# :------------------------------------::------------------------------------: #


# :------------------------------------::------------------------------------: #
# test file
# cat file
foo:&nbsp;bar1
foo:&nbsp;bar2
foo:&nbsp;bar3
foo:&nbsp;bar4
foo:&nbsp;bar5

# Using awk:
# awk -F";" '{print $NF}' file
bar1
bar2
bar3
bar4
bar5

# Using sed
# sed 's/.*;//' file
bar1
bar2
bar3
bar4
bar5

# Using cut
# cut -d";" -f2 file
bar1
bar2
bar3
bar4
bar5
# :------------------------------------::------------------------------------: #
