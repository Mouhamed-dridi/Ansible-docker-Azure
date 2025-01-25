#!/bin/bash

# ASCII Art
echo "  / \   _ __  ___(_) |__ | | ___"
echo " / _ \ | '_ \/ __| | '_ \| |/ _ \\"
echo "/ ___ \| | | \__ \ | |_) | |  __/"
echo "/_/   \_\_| |_|___/_|_.__/|_|\___|"
echo ""

# System Information
FQDN=$(hostname -f)
DISTRO=$(cat /etc/*release | grep ^PRETTY_NAME | cut -d= -f2 | tr -d \")
VIRTUAL=$(systemd-detect-virt)
CPUS=$(nproc)
RAM=$(free -h --si | awk '/^Mem:/{print $2}')
IP_ADDR=$(hostname -I | awk '{print $1}')

echo "FQDN:    $FQDN"
echo "Distro:  $DISTRO"
echo "Virtual: $VIRTUAL"
echo "CPUs:    $CPUS"
echo "RAM:     $RAM"
echo "IP Addr: $IP_ADDR"


