#Multi stage Docker file for building&deploying Application
#Building Application
FROM maven:3-openjdk-8 as appbuilder
RUN git clone https://github.com/Rajanikanthraju/hello-world.git && mvn package

#building deployment image
FROM tomcat:9.0-jdk8-temurin-focal 
LABEL author=Rajanikanth
COPY --from=appbuilder ./webapp.war  /usr/local/tomcat/webapps/webapp.war
EXPOSE 8080
