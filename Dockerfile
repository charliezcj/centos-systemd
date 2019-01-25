FROM centos:7
ENV container docker
RUN yum clean all && rm -rf /var/cache/yum && yum update -y && yum clean all && rm -rf /var/cache/yum && touch /var/log/secure && touch /etc/sysconfig/network && systemctl mask getty@tty1.service
STOPSIGNAL SIGRTMIN+4
CMD ["/usr/sbin/init"]
