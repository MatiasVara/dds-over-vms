systemctl stop firewalld
systemctl disable firewalld
cd ~
git clone https://github.com/eclipse-cyclonedds/cyclonedds.git
cd cyclonedds
mkdir build
cd build
cmake ..
cmake --build .
cd ..
sed -i 's/localbindir=""/localbindir="~\/cyclonedds\/build\/bin\/"/g' ./examples/perfscript/perftest
sed -i 's/remotebindir=""/remotebindir="~\/cyclonedds\/build\/bin\/"/g' ./examples/perfscript/perftest
sed -i 's/locallibdir=""/locallibdir="~\/cyclonedds\/build\/lib\/"/g' ./examples/perfscript/perftest
