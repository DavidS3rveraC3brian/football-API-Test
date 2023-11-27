#usamos la image de jdk
FROM openjdk:11-jre-slim

#copiamos el jar generado en el contendor
COPY target/proyecto-0.0.1-SNAPSHOT.jar app.jar

