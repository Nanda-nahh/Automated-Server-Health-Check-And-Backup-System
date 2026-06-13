# Automated Server Health Check & Backup System

## Overview

The Automated Server Health Check & Backup System is a Bash scripting project that collects important server health information and creates a compressed backup archive. This project demonstrates core Linux System Administration skills including system monitoring, service management, storage management, backup automation, and task scheduling with cron.

## Features

### Server Information

* Hostname
* Current date and time
* Logged-in user

### Disk Usage Monitoring

* Mounted filesystems
* Disk usage statistics

### Memory Monitoring

* Total memory
* Used memory
* Free memory

### Process Monitoring

* Top CPU-consuming processes

### Service Monitoring

* Running services
* Failed services
* Apache (HTTPD) service status
* SSH service status

### Network Information

* IP address information
* Routing table

### Security Checks

* SELinux status
* Firewalld status

### Backup Automation

* Checks if backup directory exists
* Creates backup directory if missing
* Creates compressed backup archive
* Verifies backup creation

## Technologies Used

* Linux (RHEL/Rocky Linux/CentOS)
* Bash Scripting
* Cron Jobs
* Tar
* Systemd
* SELinux
* Firewalld

## Commands Used

hostname
date
whoami
mount
df -h
free -h
ps
systemctl
hostname -I
ip route
getenforce
sestatus
tar
ls

## Project Structure

Automated-Server-Health-Check-And-Backup-System/
│
├── health_backup.sh
├── README.md
├── screenshots/
│   ├── script-output.png
│   ├── backup-created.png
│   └── cron-job.png
│
└── reports/
    └── health_report.txt

## How to Run

Make the script executable:

chmod +x health_backup.sh

Run the script:

./health_backup.sh

## Backup Verification

Check the backup archive:

ls -lh /backup

Example:

-rw-r--r-- 1 root root 2.3M Jun 14 12:20 project_backup-2026-06-14-12-20.tar.gz

## Cron Automation

Example cron schedules used during the project:

### Every Hour

0 * * * *

### Every Day at Midnight

0 0 * * *

### Every Sunday at Midnight

0 0 * * 0

View configured cron jobs:

crontab -l

## Skills Demonstrated

* Linux System Administration
* Bash Scripting
* Process Management
* Service Management
* Storage Administration
* Backup and Recovery
* System Monitoring
* Cron Job Scheduling
* SELinux Administration
* Firewalld Administration
* Troubleshooting

## Learning Outcomes

Through this project, I learned how to:

* Monitor Linux system resources
* Manage services using systemd
* Collect server health information
* Create automated backup solutions
* Schedule tasks using cron
* Perform basic security checks
* Build real-world Linux administration scripts

## Author

Nandana Mohan J

Linux System Administration Portfolio Project

