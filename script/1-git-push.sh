#!/bin/bash
echo "Cek Perubahan pada git"
git status

echo "🔍 Menambahkan perubahan..."
git add .

commit_msg=$1
echo "📝 Commit: $commit_msg"
git commit -m "$commit_msg"

echo "🚀 Push ke remote (origin)..."
git push origin main  # HANYA ini, jangan dobel
echo "✅ Push selesai!"

