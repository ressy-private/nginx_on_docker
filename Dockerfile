FROM centos:centos7

RUN yum update -y && \
    yum install epel-release -y && \
    yum install nginx -y

ADD bin/init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

ADD conf/etc/nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443
EXPOSE 80

CMD ["/usr/local/bin/init.sh"]
