FROM openjdk:8-jre-alpine

EXPOSE 8080

# Output after "./gradlew build" and "ls -al build/libs": 
# drwxr-xr-x 2 runner docker     4096 Aug 26 06:19 .
# drwxr-xr-x 9 runner docker     4096 Aug 26 06:19 ..
# -rw-r--r-- 1 runner docker 18106424 Aug 26 06:19 java-app-1.0-SNAPSHOT.jar 

# Changes: 
# my-app-1.0-SNAPSHOT.jar --> java-app-1.0-SNAPSHOT.jar
COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
