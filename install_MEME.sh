# pulled from the website
# downloads and installs MEME-suite to opt/meme-5.5.1
# need to set this path in R; it is not default for {memes::}

version=5.5.1
wget http://meme-suite.org/meme-software/$version/meme-$version.tar.gz
tar zxf meme-$version.tar.gz
cd meme-$version
./configure --prefix=/opt/meme-5.5.1
sudo make
sudo make test
sudo make install
