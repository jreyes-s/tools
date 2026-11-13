#!/bin/bash

function extractPorts() {
  grep -oP '\d{1,5}(?=/open)' allPorts | awk '{printf "%s%s",sep, $1; sep=","} END {print ""}'
} extractPorts
