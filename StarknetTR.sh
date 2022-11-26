#!/bin/bash
echo -e "\033[0;35m"
echo "  _     ___  ____ ____  _   _  ___  ____  _____ ";
echo " | |   / _ \/ ___/ ___|| \ | |/ _ \|  _ \| ____|";
echo " | |  | | | \___ \___ \|  \| | | | | | | |  _|  ";
echo " | |__| |_| |___) |__) | |\  | |_| | |_| | |___ ";
echo " |_____\___/|____/____/|_| \_|\___/|____/|_____|";
echo -e "\e[0m"

sleep 3

echo -e "\e[1m\e[32m1. Sunucu guncellemesi yapiliyor, gerekli kutuphaneler indiriliyor, docker kuruluyor.. \e[0m"
echo "======================================================"
sleep 1
sudo apt update && sudo apt upgrade -y
sudo apt install pkg-config curl git build-essential libssl-dev -y
sudo apt install docker.io -y
sudo apt install screen -y

echo -e "\e[1m\e[32m3. Binary dosyalari yukleniyor.. \e[0m"
echo "======================================================"
sleep 1

git clone --branch v0.4.0 https://github.com/eqlabs/pathfinder.git
