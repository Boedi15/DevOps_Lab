#!/bin/bash

# Script otomatis push ke Git remote

# Cek jika user memberi pesan commit
if [ -z "$1" ]; then
    echo "❌ Error: Harap masukkan pesan commit!"
    echo "Contoh: ./git-push.sh \"update konfigurasi CI/CD\""
    exit 1
fi

COMMIT_MESSAGE="$1"

# Tambahkan semua perubahan
echo "🔍 Menambahkan perubahan..."
git add .

# Commit dengan pesan
echo "📝 Commit: $COMMIT_MESSAGE"
git commit -m "$COMMIT_MESSAGE"

# Push ke remote
echo "🚀 Push ke remote (origin)..."
git push origin "$(git branch --show-current)"

echo "✅ Push selesai!"

