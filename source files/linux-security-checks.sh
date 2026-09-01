#!/bin/bash

# Defensive Configuration Review
# Linux Security Checks

echo "=== System Information ==="
hostnamectl
uname -a

echo "=== Network Information ==="
ip addr
ip route

echo "=== Firewall Status ==="
sudo ufw status verbose
sudo ufw status numbered

echo "=== Running Services ==="
systemctl list-units --type=service --state=running

echo "=== SSH Service Status ==="
systemctl status ssh --no-pager

echo "=== SSH Enabled Status ==="
systemctl is-enabled ssh

echo "=== Pending Package Updates ==="
apt list --upgradable 2>/dev/null

echo "=== Password Policy Check ==="
if [ -f /etc/security/pwquality.conf ]; then
    cat /etc/security/pwquality.conf
else
    echo "/etc/security/pwquality.conf not found."
fi

echo "=== Logging Service ==="
systemctl status systemd-journald --no-pager

echo "=== Backup Timers ==="
systemctl list-timers --all | grep -i backup || echo "No backup timer found."

echo "=== Review Complete ==="
