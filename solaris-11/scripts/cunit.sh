export PATH=$PATH:/usr/sfw/bin:/opt/csw/bin
wget --quiet http://downloads.sourceforge.net/project/cunit/CUnit/2.1-2/CUnit-2.1-2-src.tar.bz2
tar xfj CUnit-2.1-2-src.tar.bz2
cd CUnit-2.1-2
libtoolize --force --copy \
&& aclocal \
&& autoheader \
&& automake --add-missing --include-deps --copy \
&& ./configure --prefix=/usr \
&& make \
&& make install