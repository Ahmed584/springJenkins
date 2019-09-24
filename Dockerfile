FROM java:8

LABEL maintainer="aakrout@spark-it.fr"

ADD ./target/JenkinsMaven-0.0.1-SNAPSHOT.jar JenkinsMaven-1.0.0.jar

EXPOSE 9001

ENTRYPOINT ["java","-jar","JenkinsMaven-1.0.0.jar"]
