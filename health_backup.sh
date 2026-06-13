#!/bin/bash

echo " "
echo "Automated Server Health Check & Backup System"
echo " "
echo "Server Information"
echo " "
echo "HOSTNAME: $(hostname)"
echo " "
echo "DATE: $(date)"
echo " "
echo "USER: $(whoami)"
echo " "
echo "Disk Usage Check"
echo " "
echo "Mounted files"
mount 
echo "CPU Usage: "
df -h
echo " "
echo "Memory Usage Check"
echo " "
echo "Memory Usage: "
free -h
echo " "
echo "Process Monitoring"
echo " "
echo "Top 5 Cpu Consuming Process: "
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -6
echo " "
echo "Service Status"
echo " "
echo "Running Services: "
systemctl list-units --type=service --state=running
echo "Failed Process: "
systemctl --failed
echo "HTTPD Status: "
systemctl status httpd
echo "SSHD Status: "
systemctl status sshd
echo " "
echo "Network Information"
echo " "
echo "IP Address : "
hostname -I
echo "Routing table: "
ip route
echo " "
echo "Security Information"
echo " "
echo "SELinux status"
getenforce
sestatus
echo "Firewalld status"
systemctl status firewalld
echo " "

if [ -d "/backup" ]
then
       echo "Backup Directory Exist"
else
       mkdir /backup
       echo "Backup Created"
fi	

echo " "
echo "Backup Archive: "
tar -czvf /backup/project_backup-2026-06-14-12-20.tar.gz /root/Automated-Server-Health-Check-And-Backup-System
echo "Verify Backup Exists"
ls -lh /backup/project_backup-2026-06-14-12-20.tar.gz
echo "REPORT CREATED SUCCESSFULLY"


