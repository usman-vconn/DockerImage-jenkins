FROM ubuntu

RUN apt-get update && apt-get install -y openjdk-11-jdk
RUN apt install net-tools -y
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.9/bin/apache-tomcat-10.1.9.tar.gz /tmp
WORKDIR /tmp
RUN tar -xvzf apache-tomcat-10.1.9.tar.gz
COPY project.war  apache-tomcat-10.1.9/webapps/
EXPOSE 8080/tcp
ENTRYPOINT ["apache-tomcat-10.1.9/bin/catalina.sh","run"]
