FROM ubuntu:14.04.1

RUN yum update -y
RUN yum install -y httpd
RUN yum install -y git

ADD ./app_init.sh /

RUN mkdir /root/.ssh/
ADD id_rsa /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/id_rsa

RUN echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
