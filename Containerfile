FROM centos:stream9
RUN dnf update -y && dnf install -y git cmake gcc-c++ make wget openssh-server
RUN cd /root/ && git clone https://github.com/eclipse-cyclonedds/cyclonedds.git
RUN mkdir /var/run/sshd
RUN ssh-keygen -A
RUN echo 'root:root123' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN cd /root/cyclonedds && mkdir build && cd build/ && cmake .. && cmake --build .
EXPOSE 22
# uncomment for guest-1 image
# CMD ["/usr/sbin/sshd", "-D"]
