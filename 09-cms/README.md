# Tugas Cyber Security Hari Kesembilan - Hacking Content Management System (CMS) dan Framework

1. Mencari kerentanan yang terdapat pada http://143.198.175.81/pertemuan9/

## Reconnaissance

1. Mengakses target dan mencoba fitur fitur yang tersedia dari target.
2. Mencari tahu teknologi yang digunakan pada target menggunakan wappalyzer
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/1.PNG?raw=true)
3. Berdasarkan hasil scan wappalyzer diketahui bahwa target menggunakan CMS wordpress dan untuk memastikannya kita dapat mencoba mengakses file loginnya di http://143.198.175.81/pertemuan9/wp-login.php
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/5.PNG?raw=true)
4. Selain dengan wappalyzer kita dapat juga mengetahui cms, plugins, dan themes yang digunakan target dengan mengakses source codenya dengan menekan control U
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/2.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/3.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/4.PNG?raw=true)
5. Dari proses tersebut dapat diketahui bahwa target menggunakan 2 plugin (Feed them social dan Rezgo) dan 1 theme (Twenty twenty two)
6. Jika ingin membaca detail terkait plugin dan theme yang digunakan target dapat dengan mengakses file readmenya, contohnya
   untuk plugins:
   http://143.198.175.81/pertemuan9/wp-content/plugins/feed-them-social/readme.txt
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/6.PNG?raw=true)
   http://143.198.175.81/pertemuan9/wp-content/plugins/rezgo/readme.txt
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/7.PNG?raw=true)
   untuk themes:
   http://143.198.175.81/pertemuan9/wp-content/themes/twentytwentytwo/readme.txt
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/8.PNG?raw=true)
7. Dengan membaca file readmenya diketahui versi dari plugin dan theme yang digunakan

- Feed them social (2.9.8.6)
- Rezgo (4.1.6)
- Twenty twenty two (1.2)

8. Membandingkan versi plugin dan theme yang digunakan target dengan versi terbaru yang saat ini tersedia dengan mengakses wordpress.org/plugins dan wordpress.org/themes. Dengan membaca changelog pada setiap versi, dapat diketahui beberapa kerentanan yang terdapat pada versi sebelumnya
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/9.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/10.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/11.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/12.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/13.PNG?raw=true)
9. Membaca dokumentasi yang tersedia di Internet terkait kerentanan berdasarkan versi dari plugin dan theme yang digunakan target, beberapa diantaranya
   https://wpscan.com/
   https://www.exploit-db.com/
   https://packetstormsecurity.com/
   https://cxsecurity.com/
10. Sebagai contoh, di website wpscan.com telah dibagikan beberapa kerentanan terhadap plugin rezgo dan feed them sosial yang dapat dicoba pada target

- Rezgo
  https://wpscan.com/vulnerability/005c2300-f6bd-416e-97a6-d42284bbb093
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/14.PNG?raw=true)
- Feed Them Social
  https://wpscan.com/vulnerability/07278b12-58e6-4230-b2fb-19237e9785d8
  https://wpscan.com/vulnerability/4a3b3023-e740-411c-a77c-6477b80d7531
  ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/15.PNG?raw=true)

11. Selain mencari kelemahan yang ada pada plugin dan theme yang digunakan, dapat dicari juga file backup config yang terdapat pada target dengan mengakses http://143.198.175.81/pertemuan9/wp-config.php.bak
    ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/18.PNG?raw=true)
    ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/19.PNG?raw=true)
    ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/23.PNG?raw=true)

12. Username dari admin yang terdaftar pada website target dapat ditemukan dengan mengakses
    http://143.198.175.81/pertemuan9/?author=1
    ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/20.PNG?raw=true)
    http://143.198.175.81/pertemuan9/?rest_route=/wp/v2/users
    ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/21.PNG?raw=true)

13. Mencoba fitur registrasi user di http://143.198.175.81/pertemuan9/wp-login.php?action=register, namun target telah mematikan fitur registrasi user baru
    ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/22.PNG?raw=true)

## Penetration Testing

1. Berdasarkan proses reconnaissance yang telah dilakukan pada proses sebelumnya (step ke-10), didapatkan suatu kerentanan pada target terhadap praktek cross site scripting/xss
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/16.PNG?raw=true)
2. Sebagai pembuktian, bisa dicoba mengakses http://143.198.175.81/pertemuan9/wp-content/plugins/rezgo/rezgo/templates/default/frame_header.php?tags=%22%3E%3Cscript%3Ealert(`vulnerable terhadap xss`)%3C/script%3E
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/09-cms/assets/17.PNG?raw=true)
