CentOS 7 image with Java development tools
==========================================

This is a CentOS 7 image with the following additional tools installed:
- bzip2
- java-devel
- make
- mariadb client
- maven (3.0.5 & 3.6.1 in /opt/apache-maven-3.6.1/bin)
- mysql-connector-java
- python
- python-ldap
- MySQL-python
- libxml2-python
- libxslt-python
- postgresql-jdbc
- subversion
- unzip
- vim-enhanced
- nano editor
- which
- dos2unix

You use this image by mapping your work environment on your PC to a directory in the container.

Then you can do:
```
docker-compose up -d
docker exec -it eeadockercentos7dev_java7dev_1 bash
```

The image is also available from Docker Hub:
```
docker run -it eeacms/centos7dev bash
```

Build instructions
------------------

Built automatically at https://hub.docker.com/r/eeacms/centos7dev/ when a change is
pushed to GitHub. To ensure that you always have an immutable build for produuction
you create a new tag in GitHub.

    $ version=1.0
    $ git tag -a $version -m "Release $version"
    $ git push origin $version

