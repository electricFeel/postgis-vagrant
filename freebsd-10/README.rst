FreeBSD Vagrant Environment Operation
=====================================

The dependencies (GEOS, GDAL, Proj, etc) have all been installed from packages using the ports system (``pkg`` command).


- ``vagrant up``. This may take quite a while the first time as the base box image is downloaded.
- ``vagrant ssh`` to connect. You'll be connected as the ``vagrant`` user. You can get root access with ``sudo``. 
- ``sudo echo postgresql_enable="YES" >> /etc/rc.conf``
- ``sudo /usr/local/etc/rc.d/postgresql initdb``
- ``sudo /usr/local/etc/rc.d/postgresql start``
- ``sudo su -l pgsql -c "createuser -sd vagrant"``
- Now use ``svn`` or ``git`` to pull down the source tree you need to work with and build PostGIS.
- ``./autogen.sh``
- ``./configure --with-projdir=/usr/local``
- ``gmake`` and ``gmake check``

