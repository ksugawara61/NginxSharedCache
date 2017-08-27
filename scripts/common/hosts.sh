#!/usr/bin/env bash

sed -i '$ a 192.168.50.13 lb001' /etc/hosts 
sed -i '$ a 192.168.50.14 cache001' /etc/hosts 
sed -i '$ a 192.168.50.15 cache002' /etc/hosts 
