# This runs in the first boot but it is not runned by
# virt-builder
systemctl stop firewalld
systemctl disable firewalld
git clone https://github.com/eclipse-cyclonedds/cyclonedds.git
cd cyclonedds
mkdir build
cd build
cmake ..
cmake --build .
