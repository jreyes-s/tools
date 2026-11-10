#!/bin/bash

cat allPorts | grep -oP '\d{1,5}(?=/open)' | awk '{printf "%s,", $1}' | sed 's/,$//g'
