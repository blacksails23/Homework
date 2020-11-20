FROM ubuntu:18.04
RUN apt-get update
RUN apt-get default-jdk -y
RUN apt-get tomcat9 -y
EXPOSE 8080
RUN apt-get maven -y
RUN apt-get git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd home/black1/boxfuse-sample-java-war-hello/target mvn package
COPY home/black1/boxfuse-sample-java-war-hello/ helo-1.0 /var/lib/tomcat9/webapps/
CMD ["catalina.sh","run"]

