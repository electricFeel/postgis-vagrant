version=9.3.5
prefix=/opt/pgsql
export PATH=$PATH:/usr/sfw/bin:/opt/csw/bin

wget --quiet "https://ftp.postgresql.org/pub/source/v${version}/postgresql-${version}.tar.bz2"
tar xvfj postgresql-${version}.tar.bz2
cd postgresql-${version}
./configure --prefix=${prefix} --enable-debug --enable-cassert \
&& make \
&& make install \
&& crle -u -l ${prefix}/lib

# crle adds the library directory to the system dynamic linker
