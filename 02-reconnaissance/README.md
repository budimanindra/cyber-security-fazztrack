# Tugas Cyber Security Hari Kedua - Reconnaissance

Melakukan reconnaissance/pengintaian secara aktif dan pasif terhadap yahoo.com

## Passive reconnaissance

1. Sosial Media
   Sumber: IG, Linkedin, dan Twitter
   Informasi yang didapatkan:

   - Website resmi (http://www.yahoo.com, http://www.yahooinc.com)
   - Akun IG resmi yahoo (@yahoofinance, @yahoonews, dll)
   - Jumlah (10,001+) & Linkedin (9,023) pegawai
   - Alamat (Sunnyvale, CA)

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/1.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/2.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/3.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/4.PNG?raw=true)

2. Email Website
   Sumber: Hunter.io
   Dikarenakan pencarian pada website yahoo.com tidak membuahkan hasil, maka saya mencari mengganti pencarian dengan email website resmi yahoo yang didapatkan diproses sebelumnya (yahooinc.com)
   Informasi yang didapatkan:

   - Email-email user pengguna website

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/5.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/6.PNG?raw=true)

3. Akusisi Website

   Sumber: Wikipedia (https://en.wikipedia.org/wiki/List_of_mergers_and_acquisitions_by_Yahoo!)
   Informasi yang didapatkan:

   - Sejarah singkat Yahoo
   - List, link, dan total anak perusahaan Yahoo

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/7.PNG?raw=true)

4. Whois Enumeration

   Sumber: Whois (https://who.is/whois/yahoo.com dan whois yahoo.com di terminal kali linux)
   Informasi yang didapatkan:

   - Data domain yahoo.com
   - Email dan no. handphone pendaftar domain
   - List, link, dan total anak perusahaan Yahoo
   - Tanggal-tanggal penting terkait domain (Expire, Register, dan Pembaruan)
   - Nama dan link server
   - Domain yang menyerupai

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/8.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/9.PNG?raw=true)

5. Google Dorks

   Sumber: Google (path => site:yahoo.com, subdomain => site:\*.yahoo.com, title => site:yahoo.com intitle:"admin login")
   Informasi yang didapatkan:

   - URL dan path website yang berhubungan dengan domain yahoo.com

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/10.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/11.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/12.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/13.PNG?raw=true)

6. Subdomain Enumeration

   Sumber: Shodan (https://www.shodan.io/ => hostname:yahoo.com)
   Informasi yang didapatkan:

   - Subdomain yang berhubungan dengan domain yahoo.com
   - Sertifikat domain

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/14.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/15.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/16.PNG?raw=true)

7. Path Yahoo

   Sumber: Wayback machine (https://www.shodan.io/)
   Informasi yang didapatkan:

   - Sejarah dari tahun ke tahun website, beserta screenshot pertanggalnya

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/17.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/18.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/19.PNG?raw=true)

## Active reconnaissance

1. Subdomain Enumeration (Bruteforce)

   Sumber: Puredns (https://www.shodan.io/ => hostname:yahoo.com)
   Informasi yang didapatkan:

   - Subdomain yang berhubungan dengan domain yahoo.com (lebih lengkap)

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/20.PNG?raw=true)

2. Port Scanning

   Sumber: Nmap (nmap yahoo.com di terminal kali linux)
   Informasi yang didapatkan:

   - Mencari port yang terbuka

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/21.PNG?raw=true)

3. Identifikasi Teknologi Yahoo
   Sumber: Wappalyzer dan Whatweb (https://www.yahoo.com/ dan whatweb yahoo.com)
   Informasi yang didapatkan:

   - Teknologi yang digunakan yahoo.com

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/22.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/23.PNG?raw=true)

4. Directory Search
   Sumber: Dirsearch (dirsearch https://yahoo.com di terminal kali linux)
   Informasi yang didapatkan:

   - Mencari direktori yang tersedia pada domain target

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/24.PNG?raw=true)
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/25.PNG?raw=true)

5. Bruteforce Parameter
   Sumber: Arjun (arjun -u https://yahoo.com di terminal kali linux)
   Informasi yang didapatkan:

   - List parameter yang bisa digunakan

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/02-reconnaissance/26.PNG?raw=true)
