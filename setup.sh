#!/bin/bash
service mysql start
mysql < /home/lemon/futureloan.sql
/usr/local/apache-tomcat-8.5.59/bin/startup.sh
tail -f /usr/local/apache-tomcat-8.5.59/logs/catalina.out
