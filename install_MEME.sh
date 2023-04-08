version=5.5.1
wget http://meme-suite.org/meme-software/$version/meme-$version.tar.gz
tar zxf meme-$version.tar.gz
cd meme-$version
./configure --prefix=/opt/meme-5.5.1
sudo make
sudo make test
sudo make install
