FROM ubuntu:18.04 as build
RUN apt-get update
RUN apt-get install -y default-jdk maven git
WORKDIR /home/ubuntu
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/ubuntu/boxfuse-sample-java-war-hello
RUN mvn package
FROM tomcat:latest
COPY --from=build /home/ubuntu/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps
