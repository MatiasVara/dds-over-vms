systemctl stop firewalld
systemctl disable firewalld
git clone https://github.com/eclipse-cyclonedds/cyclonedds.git
cd cyclonedds
mkdir build
cd build
cmake ..
cmake --build .
