#!/bin/bash

file="$1"

function extractPorts() {
  grep -oP '\d{1,5}(?=/open)' "$file" | awk '{printf "%s%s",sep, $1; sep=","} END {print ""}'
}

extractPorts "$file"
