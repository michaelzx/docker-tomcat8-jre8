FROM tomcat:8-jre8
RUN \
    apt-get update && \
    apt-get -y install pwgen && \
    apt-get clean
ADD create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
ADD run.sh /run.sh
RUN chmod +x /run.sh
RUN chmod +x /create_tomcat_admin_user.sh
CMD ["/run.sh"]