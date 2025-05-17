#!/bin/bash
echo
echo "############################################"
echo "Cek status file yang berubah / belum dilacak"
echo "############################################"
git status
echo
echo "##############################"
echo "Tambahkan file ke staging area"
echo "##############################"
git add .
echo
echo "################"
echo "Commit perubahan"
echo "################"
git commit -m "Update push to GIT"
echo
echo "#####################"
echo "Push ke branch remote"
echo "#####################"
git push -u origin main
