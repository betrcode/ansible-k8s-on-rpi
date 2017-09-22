#!/usr/bin/env bash

nmap -T5 -n -p 22 --open --min-parallelism 200 192.168.99.0/24 | grep "Nmap scan report for" | awk 'NF>1{print $NF}'
