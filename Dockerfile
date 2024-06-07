FROM openjdk:8

EXPOSE 8082

WORKDIR /app


ENV NEXUS_USERNAME=admin
ENV NEXUS_PASSWORD=nexus

ENV NEXUS_URL=http://192.168.47.129:8081/repository/maven-releases/tn/esprit/DevOps_Project/1.0/DevOps_Project-1.0.jar

RUN curl -L -o DevOps_Project.jar -u $NEXUS_USERNAME:$NEXUS_PASSWORD  $NEXUS_URL

ENTRYPOINT ["java","-jar","DevOps_Project.jar"]
