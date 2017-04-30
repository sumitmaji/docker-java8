FROM ubuntu:latest
MAINTAINER Sumit Kumar Maji

#Install JDK 1.8
COPY jdk-8u131-linux-x64.tar.gz /usr/local/jdk-8u131-linux-x64.tar.gz
RUN tar -xzvf /usr/local/jdk-8u131-linux-x64.tar.gz -C /usr/local/
RUN mv /usr/local/jdk1.8.0_131 /usr/local/jdk
RUN rm -rf /usr/local/jdk-8u131-linux-x64.tar.gz

#Java Environemtn Setup
ENV JAVA_HOME /usr/local/jdk
ENV PATH $JAVA_HOME/bin:$PATH

RUN echo 'export JAVA_HOME=/usr/local/jdk' >> /root/.bashrc
RUN echo 'export PATH=$PATH:$JAVA_HOME/bin' >> /root/.bashrc

