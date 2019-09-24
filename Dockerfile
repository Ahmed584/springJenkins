FROM java:8

LABEL maintainer="aakrout@spark-it.fr"

ADD ./target/JenkinsMaven-1.0.0.jar JenkinsMaven-1.0.0.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","JenkinsMaven-1.0.0.jar"]
