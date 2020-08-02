#!/bin/bash

# - install depends tools
# yum -y install git
# yum -y install gcc gcc-c++ autoconf libtool automake make
#

# pushd thirdparty/depends_path
libtoolize && aclocal && autoheader && autoconf && automake --add-missing
sh configure
make
echo src/chinadns -m -c chnroute.txt
# popd

# echo continue && read -n 1
