#!/usr/bin/env bash

# Outputs the IP numbers of the Raspberry Pis found on the network.
# All rpis have a Mac address which starts with "b8:27:eb"

arp -a | grep b8:27:eb | awk '{print $2}' | tr -d '(' | tr -d ')'
