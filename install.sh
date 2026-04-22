#!/data/data/com.termux/files/usr/bin/bash

# Magasploit Auto-Installer
# Created by uyziu7

echo "[*] Updating system..."
pkg update -y && pkg upgrade -y

echo "[*] Installing dependencies..."
pkg install wget dpkg -y

echo "[*] Downloading Magasploit v2026.2..."
wget https://github.com/uyziu7/mgf/raw/main/mgf_2026.2_all.deb

echo "[*] Installing Magasploit (mgf)..."
dpkg -i --force-all ./mgf_2026.2_all.deb

echo "[*] Cleaning up..."
rm mgf_2026.2_all.deb

echo -e "\n[+] Magasploit installed successfully!"
echo "[+] Type 'mgfconsole' to start."

