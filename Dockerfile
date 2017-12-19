FROM sumit/ldap-client
MAINTAINER Sumit Kumar Maji

WORKDIR /usr/local/
ARG REPOSITORY_HOST
RUN wget "$REPOSITORY_HOST"/repo/jdk-8u131-linux-x64.tar.gz &&\
tar -xzvf /usr/local/jdk-8u131-linux-x64.tar.gz &&\
mv /usr/local/jdk1.8.0_131 /usr/local/jdk &&\
rm -rf /usr/local/jdk-8u131-linux-x64.tar.gz

#RUN tar -xzvf /usr/local/jdk-8u131-linux-x64.tar.gz
#RUN mv /usr/local/jdk1.8.0_131 /usr/local/jdk
#RUN rm -rf /usr/local/jdk-8u131-linux-x64.tar.gz

ENV JAVA_HOME="/usr/local/jdk"
ENV PATH="$PATH:$JAVA_HOME/bin"

RUN java -version


