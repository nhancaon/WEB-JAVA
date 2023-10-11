FROM tomcat:10.1.13-jdk21-openjdk-bookworm

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD W4.war /usr/local/tomcat/webapps/
ADD 5.1_21110788.war /usr/local/tomcat/webapps/
ADD 5.2_21110788.war /usr/local/tomcat/webapps/
ADD 6.1&2_21110788.war /usr/local/tomcat/webapps/
ADD 7.1-7.2_21110788.war /usr/local/tomcat/webapps/
ADD 7.3_21110788.war /usr/local/tomcat/webapps/
ADD 8.1_21110788.war /usr/local/tomcat/webapps/
ADD 9.1_21110788.war /usr/local/tomcat/webapps/
ADD 9.2_21110788.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
