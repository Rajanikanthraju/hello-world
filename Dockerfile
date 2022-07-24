#Multi stage Docker file for building&deploying Application
#Building Application
#building deployment image
FROM maven:3-openjdk-8 as appbuilder
RUN git clone https://github.com/Rajanikanthraju/hello-world.git && cd hello-world && mvn package

#building deployment image
FROM tomcat:9.0-jdk8-temurin-focal 
LABEL author=Rajanikanth
COPY --from=appbuilder /hello-world/webapp/target/webapp.war  /usr/local/tomcat/webapps/webapp.war
EXPOSE 8080

#FROM tomcat:9.0-jdk8-temurin-focal 
#LABEL author=Rajanikanth
#COPY  /webapp/target/webapp.war  /usr/local/tomcat/webapps/webapp.war
#EXPOSE 8080



