FROM centos
MAINTAINER jordirivas
RUN yum -y update
RUN yum -y install httpd
RUN systemctl enable httpd
EXPOSE 80
# Simple startup script to avoid some issues observed with container restart 
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
