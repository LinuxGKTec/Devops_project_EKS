FROM tomcat:9.0-jdk11-openjdk-slim
LABEL maintainer="GK"


# Ensure the webapps directory is ready and copy your WAR file

RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/ || true
COPY target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war

EXPOSE 8080

