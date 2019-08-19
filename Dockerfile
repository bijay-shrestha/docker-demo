FROM java:8
# means this is a Java application and will require all the Java libraries
# so it will pull all the Java-related libraries and add them to the container.

EXPOSE 8080
# means that we would like to expose 8080 to the outside world to access our application.

ADD target/docker-demo-0.0.1-SNAPSHOT.jar docker-demo.jar
# ADD <source from where Docker should create the image> <destination>

ENTRYPOINT ["java", "-jar", "docker-demo.jar"]
# will run the command as the entry point as this is a JAR and we need to run this JAR from within Docker.

##### in terminal run the following command ######
# docker build -f Dockerfile -t bijay/docker-demo .
# docker run -p 8080:8080 bijay/docker-demo