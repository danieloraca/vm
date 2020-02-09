## INSTALL PHP

# Step 1: Add PHP 7.3 Remi repository
sudo yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm 
sudo yum -y install epel-release yum-utils

# Step 2: Disable repo for PHP 5.4
sudo yum-config-manager --disable remi-php54
sudo yum-config-manager --enable remi-php73

# Step 3: Install PHP 7.3 on CentOS 7 / Fedora
sudo yum -y install php php-cli php-fpm php-mysqlnd php-zip php-devel php-gd php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json

# Step 4: Installing other PHP 7.3 Extensions
sudo yum install php-mysql
sudo yum install php-mysqlnd

## INSTALL MYSQL

sudo yum -y update
sudo yum -y install wget

sudo yum -y localinstall https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
sudo yum -y install mysql-community-server

# Starting MySQL
sudo systemctl enable mysqld
sudo systemctl start mysqld

## NGINX
sudo yum install epel-release

sudo yum -y install nginx

sudo systemctl enable nginx
sudo systemctl start nginx

sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload
