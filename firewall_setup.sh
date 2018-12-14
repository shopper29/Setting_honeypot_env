#!/bin/sh

setting_file="/etc/sysctl.conf"

cat << EOF >> $setting_file
net.ipv4.ip_forward = 1
net.ipv6.conf.all.disable_ipv6 = 1 
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
EOF
