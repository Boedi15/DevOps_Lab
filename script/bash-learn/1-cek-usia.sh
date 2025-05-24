#!/bin/bash
#cek usia menggunakan if
read -p "Masukan usia : " usia
if [ $usia -ge 17 ]
then
	echo "Kamu sudah cukup umur"
else
	echo "Kamu belum cukup umur"
fi
