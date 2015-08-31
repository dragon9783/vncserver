FROM dorowu/ubuntu-desktop-lxde-vnc
MAINTAINER Jeddy Liu <dragon9783@126.com>

ADD supervisord.conf /etc/supervisor/conf.d/
ADD http://ftp.cn.debian.org/debian/pool/main/s/shellinabox/shellinabox_2.14-1_amd64.deb /tmp/
RUN dpkg -i /tmp/shellinabox*.deb

EXPOSE 6080
EXPOSE 22
EXPOSE 4200

WORKDIR /root
ENTRYPOINT ["/startup.sh"]


