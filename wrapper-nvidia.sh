#!/bin/bash

cd /usr/local/bin

sudo prime-select intel 2> /dev/null

echo "options i915 enable_fbc=1 enable_psr=2 enable_guc=-1 disable_power_well=0 fastboot=1" > /etc/modprobe.d/i915.conf
echo "options dell-smm-hwmon restricted=0 force=1" > /etc/modprobe.d/dell-smm-hwmon.conf
echo "dell-smm-hwmon" > /etc/modules
update-initramfs -u

sudo rm -f /usr/local/bin/wrapper-nvidia.sh
