FROM maven:3.6.3-jdk-11
WORKDIR project
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
ADD /home/black1/Homework/building/mvn.sh /mvn.sh
RUN chmod +x /mvn.sh
ENTRYPOINT ["/mvn.sh"]
