
#!/bin/bash

# Clears log file of all data
echo "" > /path/logfile.log

search_term=$1

# If $search_term is not set, echo request for more info, else continue with search.
if [ -z "$search_term" ]
then
        echo "Please append a search term to the end of the script."
        echo "Example: # sh exfind.sh Search_Term"

else
        for file in `grep -lr $search_term /var/spool/exim/input/ | cut -b 25-`
        do
                echo $file >> /path/logfile.log
        done
fi
