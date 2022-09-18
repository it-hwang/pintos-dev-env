FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository 'deb http://archive.ubuntu.com/ubuntu/ trusty main'
RUN add-apt-repository 'deb http://archive.ubuntu.com/ubuntu/ trusty universe'
RUN apt install gcc-4.6 g++-4.6 -y
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 50

RUN apt-get install qemu -y
RUN ln -s /usr/bin/qemu-system-i386 /usr/bin/qemu

RUN apt-get install locales
RUN locale-gen en_US.UTF-8

#RUN apt-get install wget -y
#RUN cd ~/
#RUN wget http://www.stanford.edu/class/cs140/projects/pintos/pintos.tar.gz
#RUN tar xvf pintos.tar.gz

