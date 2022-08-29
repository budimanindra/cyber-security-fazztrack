# Tugas Cyber Security Hari Keempat - SQL Injection

Melakukan SQL Injection pada http://157.245.157.217/

## Bypass Form Login

Percobaan bypass diawali dengan menginput value asal ke semua form yang tersedia,
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/1.PNG?raw=true)

dengan mengamati module proxy maupun repeater pada burpsuite dapat diketahui bahwa terdapat dua parameter pada request pada saat proses login, yaitu parameter username dan password
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/2.PNG?raw=true)

jadinya dapat diasumsikan terjadi proses query seperti berikut:
SELECT username, password FROM users WHERE username='KUDA' password='KUDA'

logika untuk membypass atau melewati form login adalah dengan mencocokan nilai antara username dan password
perlu dibuat suatu kondisi dimana username dan passwordnya memberi hasil true, contoh query yang dapat memberikan hasil true

SELECT username, password FROM users WHERE username = '' OR 1

untuk menghasilkan query diatas, dapat dilakukan dengan menginput (' OR 1-- -) di form username
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/3.PNG?raw=true)

Hasil Test login dengan cara membypass form login
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/4.PNG?raw=true)

Parameter yang terdapat pada form login ketika dilakukan bypass
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/5.PNG?raw=true)

## Mendapatkan Data Sensitif

Memasukkan request yang ada di repeater burp suite ke dalam file text editor untuk dilakukan proses ekstrak database yang ada pada http://157.245.157.217/
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/6.PNG?raw=true)

Run sqlmap -r namafile
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/7.PNG?raw=true)

Run sqlmap -r namafile --dump
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/8.PNG?raw=true)
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/9.PNG?raw=true)

Test login menggunakan password yang terdaftar
![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/04-sql-injection/assets/10.PNG?raw=true)

Beberapa hal yang dapat disimpulkan dari proses SQL injection pada http://157.245.157.217/ adalah:

- Database yang digunakan adalah MySQL
- Nama database yang digunakan adalah miniproyek
- Terdapat tiga tabel yaitu admin, user, dan list barang
- Untuk Isi dari tiap tabel dapat diamati pada hasil pencarian diatas
