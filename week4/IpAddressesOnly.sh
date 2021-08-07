#!/bin/bash 
      
ipinfo="$(./IpInfo.sh)"

addresses=$(echo "$ipinfo" | sed -n '/IP A/ { 
      
s/IP A/IP A/ 
      
p 
      
}') 

echo -e "IP addresses on this computer are:\n$addresses"