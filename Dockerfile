FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y default-jdk maven git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR home/black1/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR home/black1/boxfuse-sample-java-war-hello/target
COPY helo-1.0 /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]

