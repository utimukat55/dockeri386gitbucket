FROM utimukat55/jessiei386_20141014
MAINTAINER utimukat55
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install openjdk-7-jre-headless
RUN apt-get clean
ADD https://github.com/takezoe/gitbucket/releases/download/2.4.1/gitbucket.war /opt/gitbucket.war

EXPOSE 8080
CMD ["java", "-jar", "/opt/gitbucket.war"]

