# Multi-arg in script
# How can I pass all arguments my bash script has received to it? 
# The number of params is variable, so I can't just hardcode the arguments passed like this:

abc $1 $2 $3 $4


# Use the "$@" variable, which expands to all command-line parameters separated by spaces.

abc "$@"
