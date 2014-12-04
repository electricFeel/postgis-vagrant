Solaris Vagrant Environment Operation
======================================

The dependencies (GEOS, GDAL, Proj, etc) have all been installed from packages using OpenCSW <http://opencsw.org>. For custom development using unpackaged sources, you'll need to remove them first with ``pkgrm``.


- ``vagrant up``. This may take quite a while the first time as the base box image is downloaded.
- ``vagrant ssh`` to connect. You'll be connected as the ``vagrant`` user. You can get root access with ``sudo``. 
- ``export PATH=/opt/pgsql/bin:$PATH:/usr/sfw/bin:/opt/csw/bin``. This places the CSW components **after** the system components.
- ``initdb -D $HOME/pgdata``
- ``pg_ctl -D $HOME/pgdata start``
- Now use ``svn`` or ``git`` to pull down the source tree you need to work with and build PostGIS.
- ``./autogen.sh`` to generate ``configure``
- ``./configure`` to configure
- ``make`` and ``make check`` to ensure things regress.
