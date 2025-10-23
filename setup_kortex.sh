# Setup Google Protobuf
# Note: version v3.20.3
cd /tmp
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.20.3/protobuf-cpp-3.20.3.tar.gz
tar -xzf protobuf-cpp-3.20.3.tar.gz
cd protobuf-3.20.3
./configure --prefix=/usr/local
make -j$(nproc)
sudo make install
sudo ldconfig

if /usr/local/bin/protoc --version | grep -q '^libprotoc 3\.20\.3$'; then
    echo "Google Protobuf version detected. Continuing setup"
else
    echo "Google Protobuf installation failed"
    exit 1
fi