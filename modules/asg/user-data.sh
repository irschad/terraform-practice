#!bin/bash
yum update -y
yum install httpd git -y
#git clone https://github.com/gabrielecirulli/2048.git
#cp -R 2048/* /var/www/html
echo "Hello from $(hostname)" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd

