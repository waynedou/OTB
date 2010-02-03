version=1.0
rm -rf libsiftfast-$version libsiftfast-$version-src
make prefix=`pwd`/libsiftfast-$version
make install
cp README libsiftfast-$version/
tar czf libsiftfast-$version-linux-i386.tgz libsiftfast-$version
svn export . libsiftfast-$version-src/
tar czf libsiftfast-$version-src.tgz libsiftfast-$version-src
rm -rf libsiftfast-$version libsiftfast-$version-src