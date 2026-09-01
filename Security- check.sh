#!/bin/bash

# Defensive Configuration Review
# Authorized local Ubuntu VM

echo "=== System Information ==="
hostnamectl
ip addr

echo "=== Password Policy ==="
grep -E 'PASS_MAX_DAYS|PASS_MIN_DAYS|PASS_WARN_AGE' /etc/login.defs

echo "=== User Accounts with Login Shells ==="
getent passwd | grep -E '/(bash|sh)$'

echo "=== Running Services ==="
systemctl list-units --type=service --state=running

echo "=== Firewall Status ==="
sudo ufw status verbose

echo "=== SSH Status ==="
systemctl status ssh --no-pager
systemctl is-enabled ssh

echo "=== Available Updates ==="
apt list --upgradable

echo "=== Logging ==="
systemctl status systemd-journald --no-pager

echo "=== Backup Timer Check ==="
systemctl list-timers --all | grep -i backup
