# Tugas Cyber Security Hari Kedelapan - Unrestricted File Upload (UFU)

1. Mencari bug Unrestricted File Upload (UFU) pada http://143.198.175.81/

- Mengakses target dan mencoba fitur fitur yang tersedia dari target.
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/08-ufu/assets/1.PNG?raw=true)

- UFU biasanya dapat ditemukan di suatu fitur upload file seperti upload foto diri/dokumen. Fitur tersebut biasanya ada dibagian registrasi user
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/08-ufu/assets/2.PNG?raw=true)

- Melengkapi data diri dan mengupload file php untuk mengetahui apakah di form tersebut terdapat bug UFU
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/08-ufu/assets/3.PNG?raw=true)

- File terupload ke sistem/server, berarti tidak ada validasi pada form upload foto diri
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/08-ufu/assets/4.PNG?raw=true)

Dapat disimpulkan bahwa target rentan terhadap bug UFU dikarenakan tidak adanya validasi pada file yang diupload pada form tersebut.
Karena file yang diupload berekstensi php, maka dampak dari bug ufu file tersebut adalah remote code execution.
