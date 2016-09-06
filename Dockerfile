FROM ubuntu:16.04

MAINTAINER turtle "turtle@anasit.com"

RUN \
        apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0xcbcb082a1bb943db && \
        apt-get update && \
        apt-get install -y mariadb-server mariadb-common && \
        apt-get install -y php && \
        apt-get install -y nginx && \
        apt-get install -y vim



# 配置nginx

Copy ./default /etc/nginx/sites-available/default

# 添加启动脚本
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh


CMD /start.sh && tail -f

# Expose ports.
EXPOSE 3306
EXPOSE 80
