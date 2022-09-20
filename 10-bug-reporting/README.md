# Tugas Cyber Security Hari Kesepuluh - Bug Reporting

1. Membuat bug report yang terdapat pada http://143.198.175.81/pertemuan9/

## Report

1. Title
   Reflected Cross-Site-Scripting (XSS) at http://143.198.175.81/pertemuan9/
2. Summary
   http://143.198.175.81/pertemuan9/ installed the rezgo plugin version 4.1.6 which is outdated (latest version is 4.1.16). Rezgo version 4.1.6 does not sanitize/filter some parameters, which can lead vulnerability to the practice of reflected cross-site scripting/XSS. According to OWASP, Cross-Site Scripting (XSS) attacks are a type of injection, in which malicious scripts are injected into otherwise benign and trusted websites.
3. CVSS Vector and Score

   - Attack Vector = Network
   - Attack Complexity = Low
   - Privilage Required = None
   - User Interaction = None
   - Scope = Changed
   - Confidentiality = Low
   - Integrity = Low
   - Availability = Low

   https://www.first.org/cvss/calculator

   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/10-bug-reporting/assets/1.PNG?raw=true)

   Vector String - CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:L/I:L/A:L

4. Steps to reproduce

   1. Go to http://143.198.175.81/pertemuan9/
   2. Change the URL to http://143.198.175.81/pertemuan9/wp-content/plugins/rezgo/rezgo/templates/default/frame_header.php?tags=%22%3E%3Cscript%3Ealert(`xss`)%3C/script%3E
   3. The XSS payload will be executed

5. OS and Browser

   - OS = Windows 10
   - Browser = Google Chrome Version 105.0.5195.125

6. Proof of concept
   ![alt text](https://github.com/budimanindra/cyber-security-fazztrack/blob/main/10-bug-reporting/assets/2.PNG?raw=true)

7. Impact
   Attacker could execute arbitrary Javascript code in victime's browser, which can lead to access any cookies, session tokens, or other sensitive information
8. Remediation
   Update the installed plugins to the latest version, in this case rezgo
9. References
   - https://owasp.org/www-community/attacks/xss/
   - https://wpscan.com/plugin/rezgo
