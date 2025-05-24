#!/bin/bash
# Cek jumlah Core CPU

core=$(nproc)
if
	[ $core -ge 4 ]
then
	echo "backup dijalankan ( CPU core : $core)"
	# perintah backup
else
	echo "CPU terlalu kecil, backup dibatalkan"
fi
	
