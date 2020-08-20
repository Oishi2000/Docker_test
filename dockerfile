FROM ubuntu:18.04

#install wget
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

#install sudo
RUN apt-get update && \
    apt-get -y install sudo

#install gnupg
RUN sudo apt-get install -y gnupg

#install JAVA
RUN apt update
RUN apt install -y default-jdk

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/bin/java

#install Maven
RUN apt update
RUN apt install -y maven

ENV JAVA_HOME=/usr/lib/jvm/default-java
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
ENV PATH=${M2_HOME}/bin:${PATH}

#install tomcat
RUN mkdir /opt/tomcat
RUN cd /opt/tomcat

RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz
RUN tar xvzf apache-tomcat-8.5.57.tar.gz

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/bin/java
ENV CATALINA_HOME=/opt/tomcat/apache-tomcat-8.5.57


EXPOSE 8081

#install git
RUN apt update
RUN apt install -y git

#install build-eesential
RUN apt install -y build-essential
 
