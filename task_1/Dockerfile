FROM ubuntu:latest
    RUN apt-get update && apt-get -y install g++ vim
    WORKDIR root/App/
    COPY main.cxx .
    RUN g++ main.cxx -o app
    CMD ["./app"]
