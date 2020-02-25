# Ubuntu 16.04
# Oracle Java 1.8.0_101 64 bit
# Maven 3.3.9
# Python 3.6
# 
# modified version of Kai Winter docker-java8-maven image (https://github.com/kaiwinter)
# with additionally installed:
# - PYTHON
# - PIP
# - ANYBADGE (tool for creating custom GitLab badges)

FROM kaiwinter/docker-java8-maven

MAINTAINER Piotr Choczynski

# update dpkg repositories
RUN apt-get update 

# install python
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt -y install python3.6
RUN apt-get -y install python3-pip

# install bc (bash calculator)
RUN apt-get -y install bc

# install xmllint
RUN apt-get -y install libxml2-utils

# install CLOC (lines of code counter)
RUN apt-get -y install cloc

# install SSH client
RUN apt-get -y install openssh-client

# remove download archive files
RUN apt-get clean

# install anybadge
RUN pip3 install anybadge

CMD [""]
