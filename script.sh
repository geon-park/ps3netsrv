#!/bin/sh

# clone ps3netsrv
cd /tmp
git clone https://github.com/aldostools/webMAN-MOD.git

# build ps3netsrv
cd /tmp/webMAN-MOD/_Projects_/ps3netsrv
mv Makefile Makefile.windows
mv Makefile.linux Makefile
make
chmod +x ps3netsrv

# move ps3netsrv
mv ps3netsrv /usr/bin/
ln -sf /usr/bin/ps3netsrv /usr/local/bin

# delete ps3netsrv source files
cd /
rm -rf /tmp/*
