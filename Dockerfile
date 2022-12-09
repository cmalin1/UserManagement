FROM tomcat:8.5.51-jdk11-openjdk
COPY target/UserManagement.war /usr/local/tomcat/webapps/UserManagement.war
