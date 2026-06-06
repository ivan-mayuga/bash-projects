#!/bin/bash

echo "=== DEVOPS MANAGER STARTED ==="

echo "Creating project structure..."

mkdir -p devops_lab/logs
mkdir -p devops_lab/configs
mkdir -p devops_lab/scripts

touch devops_lab/logs/system.log

echo "System initialized" > devops_lab/logs/system.log

echo "=== SYSTEM INFO ==="

echo "Date: $(date)"
echo "User: $(whoami)"
echo "Current Directory: $(pwd)"

echo "=== TOP PROCESSES ==="

ps aux | head -n 6

echo "=== PACKAGE CHECK ==="

if command -v curl >/dev/null 2>&1; then
    echo "curl is installed"
else
    echo "curl is NOT installed"
fi

echo "=== CREATING SCRIPT FILE ==="

mkdir -p devops_lab/scripts

echo "#!/bin/bash" > devops_lab/scripts/run.sh
echo "echo Hello from run script" >> devops_lab/scripts/run.sh

chmod +x devops_lab/scripts/run.sh

echo "=== LOGGING ==="

echo "[INFO] Script executed at $(date)" >> devops_lab/logs/system.log
echo "[INFO] User: $(whoami)" >> devops_lab/logs/system.log

echo "=== DEVOPS MANAGER COMPLETED SUCCESSFULLY ==="





