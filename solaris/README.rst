Solaris Vagrant Environment Operation
======================================

The dependencies (GEOS, GDAL, Proj, etc) have all been installed from packages using OpenCSW <http://opencsw.org>. For custom development using unpackaged sources, you'll need to remove them first with ``pkgrm``.


- ``vagrant up``. This may take quite a while the first time as the base box image is downloaded.
- ``vagrant ssh`` to connect. You'll be connected as the ``vagrant`` user. You can get root access with ``sudo``. 
- ``export PATH=/opt/csw/bin:$PATH``
- ``/opt/csw/bin/pg_ctl -D /var/opt/csw/postgresql/93 -l logfile start``
- Now use ``svn`` or ``git`` to pull down the source tree you need to work with and build PostGIS.

