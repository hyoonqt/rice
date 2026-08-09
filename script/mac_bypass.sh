#!/bin/bash

WIFI_NAME="[change with wifi's name]"
HP_MAC="[change with mobile's MAC addr]"

echo "[*] Memutus koneksi saat ini..."
nmcli connection down "$WIFI_NAME" 2>/dev/null

echo "[*] Menginjeksi MAC Address HP ke profil Wi-Fi..."
nmcli connection modify "$WIFI_NAME" 802-11-wireless.cloned-mac-address "$HP_MAC"

echo "[*] Menghubungkan ulang ke jaringan..."
nmcli connection up "$WIFI_NAME"

echo "[+] Selesai! Laptop sekarang menyamar sebagai HP."
echo "[!] PERINGATAN: Pastikan Wi-Fi HP dimatikan agar tidak terjadi IP/MAC Conflict."
