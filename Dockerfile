FROM mysql:5.7
LABEL maintainer="waiwaioba@qq.com"
LABEL version="1.0"
LABEL description="futureloan deploy"

#install mysql 
#RUN rpm -ivh https://repo.mysql.com//mysql57-community-release-el7-11.noarch.rpm
#RUN yum -y install mysql-server

WORKDIR /home/lemon
COPY futureloan.sql .
COPY setup.sh .
ENTRYPOINT ["/bin/bash","/home/lemon/setup.sh"]

