#!/bin/bash

# Function to run commands with output redirected to /dev/null
run_command() {
    "$@" > /dev/null 2>&1
}

# Example usage
run_command scripts/getJS_node.sh
run_command scripts/cariddi_node1.h
run_command scripts/cariddi_node2.sh
run_command scripts/merge-classify.sh
cat finaloutput/*.txt
find output -type f -exec rm -f {} \;

# The rest of your script goes here