FROM java:8
VOLUME /tmp
COPY http://localhost:9090/jenkins/job/pipeline-2/alzapp4-0.0.1-SNAPSHOT.jar alzapp4-0.0.1-SNAPSHOT.jar
EXPOSE 9091
ENTRYPOINT ["java","-jar","alzapp4-0.0.1-SNAPSHOT.jar"]
