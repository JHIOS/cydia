#!/bin/sh
cd `dirname $0`; pwd
dpkg-scanpackages -m debs / >Packages
dpkg-scanpackages debs/ /dev/null >> Packages
bzip2 -c Packages > Packages.bz2


