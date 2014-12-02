Centos 7 Vagrant Environment Operation
======================================

- ``vagrant up``. This may take quite a while the first time as the base box image is downloaded.
- ``vagrant ssh`` to connect. You'll be connected as the ``vagrant`` user. You can get root access with ``sudo``. 
- ``export PATH=$PATH:/usr/pgsql-9.3/bin``
- ``sudo service postgresql-9.3 initdb``
- ``sudo service postgresql-9.3 start``
- Now use ``svn`` or ``git`` to pull down the source tree you need to work with and build PostGIS.

