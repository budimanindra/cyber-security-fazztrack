# Tugas Cyber Security Hari Keenam - Cross Site Request Forgery (CSRF) & Open Redirect

1. Mencari bug Cross Site Request Forgery (CSRF) pada http://157.245.157.217/

- Login ke website dengan memasukkan username dan password yang telah didapatkan di project sql injection minggu sebelumnya
  username: admin
  password: admin

- Mencari parameter yang memungkinkan untuk dilakukan CSRF, di halaman dashboard terdapat tombol untuk berpindah halaman dan menambah data
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/1.PNG?raw=true)
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/2.PNG?raw=true)

- Mengaktifkan intercept pada module proxy yang terdapat pada burpsuite untuk mengamati http request dan parameter yang digunakan oleh target
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/3.PNG?raw=true)

- Mengisi data dummy, lalu mengklik submit
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/4.PNG?raw=true)

- Memindahkan request yang diterima ke module repeater untuk dianalisa. Tidak dapat ditemukan token unik Header dari proses request http submit form tersebut, sehingga dapat disimpulkan bahwa request tersebut rentan csrf, selain itu didapat juga jenis http request yang dilakukan (POST), nama parameter (judul dan deskripsi) dari form yang telah diisi serta url dan direktori yang diperlukan untuk proses csrf
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/5.PNG?raw=true)

- Membuat file html yang sesuai dengan POST serta menyisipkan data baru yang akan dibuat berdasarkan parameter, url dan direktori yang telah didapat dari proses sebelumnya
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/6.PNG?raw=true)

- Membuka file html yang telah dibuat dan mengklik button yang tersedia, dibalik layar terjadi proses http request dengan memasukkan payload yang telah dibuat proses sebelumnya
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/7.PNG?raw=true)

- Mengakses halaman dashboard kemudian dapat diamati terdapat data baru yang sesuai dengan payload yang telah disisipkan pada proses csrf
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/8.PNG?raw=true)

Dapat disimpulkan bahwa target rentan terhadap praktek CSRF pada request menambah jumlah berita

2. Open Redirect pada http://157.245.157.217/

- Mengakses halaman admin login, lalu mengamati url yang tersedia, terdapat parameter redirect, dapat diasumsikan bahwa dapat dilakukan bug open redirect
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/9.PNG?raw=true)

- Mencoba mengganti/mengeksploitasi parameter tersebut dengan string baru yang bertujuan untuk redirect ke http://evil.com
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/10.PNG?raw=true)

- Mengklik yes
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/11.PNG?raw=true)

- User diarahkan ke http://evil.com
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/06-csrf-open-redirect/assets/12.PNG?raw=true)

Dapat disimpulkan bahwa target rentan terhadap praktek open redirect pada halaman admin login
