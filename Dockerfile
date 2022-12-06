FROM ubuntu
RUN apt-get update
RUN apt-get install -y maven
COPY pom.xml /home/vm1/maven/my-app1/service/pom.xml
COPY src /home/vm1/maven/my-app1/service/src
EXPOSE 25000
WORKDIR /home/vm1/maven/my-app1/service
RUN mvn package
CMD ["java","-cp","target/my-app1-1.0-SNAPSHOT.jar","com.maven.app.JabberServer"]
