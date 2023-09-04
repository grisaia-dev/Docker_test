FROM ubuntu:latest
	RUN apt-get update && apt-get install -y apt-utils
	RUN apt-get update && apt-get install -y g++ cmake git
	WORKDIR home/App/
	RUN git clone https://github.com/grisaia-dev/Refactoring .
	WORKDIR task_1/
	RUN mv * ../
	WORKDIR ../
	RUN rm -rf task_1/
	RUN mkdir build
	WORKDIR build/
	RUN cmake build .. && make
	WORKDIR ../bin/
	CMD ["./REF"]

