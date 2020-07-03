FROM tomcat:alpine
MAINTAINER Dipti
RUN wget -O /usr/local/tomcat/webapps/devopsqaassignment.war http://10.127.130.66:8040/artifactory/dipti_devopsAssignment/com/example/java-tomcat-maven-example/1.0-SNAPSHOT/java-tomcat-maven-example-1.0-SNAPSHOT.war
EXPOSE 8090
CMD /usr/local/tomcat/bin/catalina.sh run
