#!/bin/bash

# optimise ram usage
cat /proc/sys/vm/swappiness

echo "Edit sysctl.conf by appending: vm.swappiness = 10"
sudo vim /etc/sysctl.conf

