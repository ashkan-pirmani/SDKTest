#!/bin/bash
FILE=""
DIR="/FederatedPy/MSDA_Querry2/results"
# init
# look for empty dir 
if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
else
    echo "$DIR is Empty"
    bash ../FederatedPy/run.sh
fi
# rest of the logic
