# Day 9: Integrity, Encryption & Firewalling

1. md5sum: It computes and checks MD5 cryptographic checksums (hashes). An MD5 hash is a 128-bit value expressed as a 32-character hexadecimal string. 
It's used to check if a file has been corrupted. If the checked file changes, its checksum will normally change.
Example: 
echo "Hello Linux" > file.txt 
md5sum file.txt
output: 4509ed62a4ab68d647eb92416f536e24  file.txt
echo "Hello DevOps" > file.txt
md5sum file.txt
output:a92857c661faaf12a458733f62de0187  file.txt

2. sha256sum: It computes and checks SHA-256 (Secure Hash Algorithm) cryptographic checksums. It's much more secure and expressed in a 64-character hexadecimal string. 
Example: sha256sum file.txt
output: f41a78a88290b3e13c4fcc1ed35adc707756bfa839b70b03328e7cb73c93bf8b file.txt

3. gpg --gen-key: GNU Privacy Guard - It generates a new public/private key pair. It's used to set up a cryptographic identity to encrypt files securely. 
Example: gpg --gen-key

4. gpg --encrypt: It encrypts a file using a public key
Example: gpg --encrypt --recipient student@example.com secret.txt
5. gpg --decrypt: It decrypts an encrypted GPG file using a private key and passphrase
Example: gpg --decrypt secret.txt.gpg

6. chattr +i: It changes special file attributes by adding "+i" immutable flag. It's used to lock down critical files so they can't be modified, deleted, or renamed by any user, even by root, until the flag is removed. 
Example: sudo chattr +i important.txt

7. lsattr: It displays special attributes assigned to files. 
Example: lsattr important.txt

8. ufw enable: It activates the Uncomplicated Firewall (UFW) and enables its rules to start enforcing on system boot. 'ufw' needs to be install at first. 
Example: sudo ufw enable

9. ufw allow: It adds a rule to the firewall permitting incoming network traffic for a special port, protocol, or service. 
Example: sudo ufw allow 22/tcp

10. ufw status: It displays the current operational state of the firewall along with all active rules. 
Example: sudo ufw status verbose
