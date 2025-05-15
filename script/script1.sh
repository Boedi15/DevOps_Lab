#!/bin/bash

# === Konfigurasi Awal ===
echo "#####################################"
echo "Memulai persiapan kegiatan harian..."
echo "####################################"
echo "Tanggal: $(date)"
echo "Nama Host: $(hostname)"
echo

# === 1. Update & Upgrade Sistem ===
echo "##########################"
echo "Memeriksa update sistem..."
echo "##########################"
sudo apt update && sudo apt upgrade -y

# === 2. Cek Koneksi Internet ===
echo
echo "Menguji koneksi internet..."
ping -c 2 google.com > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "✔️ Internet aktif."
else
    echo "❌ Tidak ada koneksi internet."
fi

# === 3. Cek Penggunaan Disk ===
echo
echo "Penggunaan disk:"
df -h /

# === 4. Cek Status Baterai ===
if command -v acpi > /dev/null; then
    echo
    echo "Status baterai:"
    acpi -b
else
    echo
    echo "acpi tidak ditemukan. Melewati pengecekan baterai."
fi

# === 5. Menjalankan Aplikasi Favorit ===
echo
echo "Membuka aplikasi harian..."
nohup firefox &> /dev/null

echo
echo "✅ Semua tugas awal selesai. Selamat bekerja!"

