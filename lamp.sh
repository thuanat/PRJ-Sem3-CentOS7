#!/bin/bash
yum -y install epel-release
yum -y install httpd
service httpd start
chkconfig htpd on
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --reload

