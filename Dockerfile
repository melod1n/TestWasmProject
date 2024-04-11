FROM gradle:8.4.0-jdk17 AS builder
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src

RUN gradle wasmJsBrowserDistribution --no-daemon
