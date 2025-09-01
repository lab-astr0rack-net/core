#!/bin/sh
# This script is executed at boot time before VyOS configuration is applied.
# Any modifications required to work around unfixed bugs or use
# services not available through the VyOS CLI system can be placed here.
#
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -I INPUT -i lo -j ACCEPT
