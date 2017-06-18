FROM centos:centos7

RUN yum update -y && \
    yum install epel-release -y && \
    yum install nginx -y

ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf

EXPOSE 443
EXPOSE 80
