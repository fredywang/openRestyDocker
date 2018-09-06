FROM centos:latest
MAINTAINER FredgWang FredyWang2005@gmail.com
RUN yum install -y epel-release yum-utils
RUN yum-config-manager --add-repo https://openresty.org/package/rhel/openresty.repo
RUN yum -y update
RUN yum install -y wget unzip tar telnet htop openresty openresty-resty
ADD network /etc/sysconfig/
EXPOSE 8080
EXPOSE 8081
EXPOSE 80
EXPOSE 443
EXPOSE 5672
EXPOSE 15672
EXPOSE 25672

CMD ["/usr/local/openresty/bin/openresty","-g","daemon off;"]
