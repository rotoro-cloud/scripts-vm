#!/bin/bash

# Check variables
if [[ -z "${LITER}" || -z "${FLOOR}" ]]; then
    >&2 echo "ENVs not set";
    exit 1;
fi

if [[ ! -f "${1}" ]]; then
    >&2 echo "No DB file";
    exit 1;
fi

# Fix data representation
column=$((LITER+1))
row=$((FLOOR+1))

# Your awk code below