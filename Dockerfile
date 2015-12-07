FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

#install basics softwares
RUN apt-get update && \
	apt-get install -y \
	software-properties-common

#add java repository and install java
RUN add-apt-repository -y ppa:webupd8team/java && \
	apt-get update && \
	echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
	apt-get install -y oracle-java8-installer

CMD ["/bin/bash"]
