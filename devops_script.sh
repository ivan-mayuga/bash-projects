#!/bin/bash

echo "=== DEVOPS AUTOMATION SCRIPT ==="

# Create folder
mkdir -p my_project

# Create files
touch my_project/app.log
touch my_project/config.txt

# Add content
echo "App started" > my_project/app.log
echo "ENV=production" > my_project/config.txt

# Show system info
echo "=== SYSTEM INFO ==="
uname -a

# Show running processes
echo "=== TOP PROCESSES ==="
ps aux | head
