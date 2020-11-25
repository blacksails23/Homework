FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y git maven default-jdk
WORKDIR /home/ubuntu
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
ADD mvn.sh mvn.sh
RUN chmod +x mvn.sh
ENTRYPOINT ["/home/ubuntu/mvn.sh"]
