FROM openjdk:8
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN mkdir /usr/src/demo
COPY /target/demo-0.0.1-SNAPSHOT.jar /usr/src/demo
WORKDIR /usr/src/demo
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
