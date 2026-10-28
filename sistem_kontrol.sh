#!/bin/bash

echo "=== SISTEM BILGILERI ==="
echo ""

echo "Kullanıcı: $(whoami)"
echo "Tarih ve Saat: $(date)"
echo "Uptime (Çalışma Süresi): $(uptime -p)"
echo ""

echo "=== AG BILGILERI ==="
echo "IP Adresi: $(hostname -I | awk '{print $1}')"
echo ""

echo "=== DISK KULLANIMI ==="
df -h / | awk 'NR==2 {print "Kullanılan / Toplam: " $3 " / " $2 " (" $5 ")"}'
