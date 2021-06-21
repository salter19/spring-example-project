# Need java 8
FROM openjdk:8

# Use port 8080
EXPOSE 8080

# set workdir
WORKDIR /usr/src/app

# copy 
COPY . .


# run some maven package
RUN ./mvnw package

# what to give as command?
CMD java -jar ./target/docker-example-1.1.3.jar

# give entry point
ENTRYPOINT java -jar ./target/docker-example-1.1.3.jar
