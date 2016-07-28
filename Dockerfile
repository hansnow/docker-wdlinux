FROM centos:6
MAINTAINER "Xiaohan Lee" <hansnow2012@gmail.com>

RUN mkdir -p /var/wdlinux_install
COPY lanmp.tar.gz /var/wdlinux_install/
WORKDIR /var/wdlinux_install
RUN tar zxvf lanmp.tar.gz && \
    sh lanmp.sh 
COPY entrypoint.sh /bin/entrypoint.sh
EXPOSE 80 8080

ENTRYPOINT ["/bin/entrypoint.sh"]

