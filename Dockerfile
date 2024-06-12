FROM ubuntu:latest
RUN apt update
RUN apt install -y openjdk-11-jdk
RUN apt install -y git
RUN git clone https://github.com/sloenthran/JavaSnake.git
WORKDIR ./JavaSnake
RUN ./gradlew build
CMD ["java", "-jar", "./build/libs/JavaSnake-1.0-SNAPSHOT.jar"]
