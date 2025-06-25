#!/bin/bash

# Cek apakah folder adalah Git repo
if [ ! -d ".git" ]; then
  echo "❌ Ini bukan direktori Git."
  exit 1
fi

echo -e "\e[36m🔍 Mengecek update dari GitHub...\e[0m"

# Ambil update terbaru dari GitHub
git fetch origin > /dev/null 2>&1

# Ambil hash commit lokal dan remote
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse @{u} 2>/dev/null)

# Cek apakah remote tracking branch ada
if [ $? -ne 0 ]; then
  echo "⚠️  Branch remote tidak ditemukan. Pastikan branch lokal lo tracking origin/main atau branch remote lain."
  exit 1
fi

# Bandingkan hash
if [ "$LOCAL" = "$REMOTE" ]; then
  echo -e "\e[32m✅ Repo lokal sudah up to date dengan GitHub.\e[0m"
else
  echo -e "\e[33m⚠️  Ada update di GitHub! Jalankan 'git pull origin main'\e[0m"
fi

