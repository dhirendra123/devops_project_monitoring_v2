# devops_project_monitoring_v2
A shell scripting project simulating real-world DevOps log monitoring and backup automation. Includes log generation, real-time monitoring, and log rotation using simple Bash scripts.
# DevOps Project Monitoring v2

This project is a **real-world simulation of log monitoring and backup automation** using shell scripting.  
It is designed for learning DevOps fundamentals without requiring any cloud access.  

## 📌 Features
- **Log Generation**: Simulates application logs with different log levels (INFO, WARN, ERROR).
- **Log Monitoring**: Real-time monitoring of logs using `tail` and `grep` with color-coded output.
- **Log Rotation & Backup**: Archives old logs into a backup directory using `tar` and timestamping.

## 📂 Project Structure

devops_project_monitoring_v2/
├── app/ # Contains fake app scripts to generate logs
├── logs/ # Stores application logs (excluded from Git)
├── backups/ # Stores backup archives
├── scripts/ # Shell scripts for log generation, monitoring, and backup
└── README.md # Project documentation
