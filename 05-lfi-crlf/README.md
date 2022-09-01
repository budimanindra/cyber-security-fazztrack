# Tugas Cyber Security Hari Kelima - File Inclusion dan CRLF Injection

1. Mencari bug Local File Inclusion (LFI) pada http://157.245.157.217/ kemudian mengakses file /home/daffa/lfi.txt
2. Melakukan CRLF pada direktori yang vulnerable

## Reconnaissance

- Menggunakan bantuan dirsearch untuk mencari direktori yang vulnerable
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/05-lfi-crlf/assets/1.PNG?raw=true)

1. LFI

- Login ke website dengan memasukkan username dan password yang telah didapatkan di project sql injection minggu sebelumnya
  username: admin
  password: admin

- Mencari parameter yang memungkinkan untuk dilakukan LFI, di halaman dashboard terdapat suatu parameter/input dinamis bernama page yang bertugas untuk memanggil file jumlah_berita.php
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/05-lfi-crlf/assets/2.PNG?raw=true)

- Mengganti value jumlah_berita.php dengan /home/daffa/lfi.txt maka akan didapatkan isi file lfi.txt sebagai berikut
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/05-lfi-crlf/assets/3.PNG?raw=true)

2. CRLF

Salah satu informasi yang didapat pada saat reconnaissance (dirsearch) yaitu ada suatu direktori bernama static

- Mengaktifkan intercept di modul proxy kemudian mengakses http://157.245.157.217/static/
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/05-lfi-crlf/assets/4.PNG?raw=true)

- Mengcopy request yang ada ke modul repeater untuk diamati responsenya
- Menambahkan string asal dan mengamati apakah string tersebut bertambah ke responsenya
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/05-lfi-crlf/assets/5.PNG?raw=true)

- Menambahkan header baru dengan cara menambah string (%0d%0aHeader-Baru:%20katanya sih bahaya om) dan mengamati hasil pada responsenya
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/05-lfi-crlf/assets/6.PNG?raw=true)
