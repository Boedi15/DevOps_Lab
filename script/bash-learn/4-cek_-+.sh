#!/bin/bash
#cek angka positi atau ganjil
echo "masukan angka :"
read angka

if
	[ $angka -gt 0 ]
then
	echo "Angka positif"
elif 
	[ $angka -lt 0 ] 
then
	echo "Angka negatif"
else
	echo "Angka nol"
fi
