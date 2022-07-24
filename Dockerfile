#Multi stage Docker file for building&deploying Application
#Building Application
#building deployment image
FROM tomcat:9.0-jdk8-temurin-focal 
LABEL author=Rajanikanth
COPY  /home/devops/jenkins_root/workspace/test_connection/webapp/target/webapp.war  /usr/local/tomcat/webapps/webapp.war
EXPOSE 8080
