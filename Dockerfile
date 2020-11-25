FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y git maven default-jdk
WORKDIR /home/ubuntu
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/ubuntu/boxfuse-sample-java-war-hello
CMD mvn /home/ubuntu/boxfuse-sample-java-war-hello/pom.xml package
