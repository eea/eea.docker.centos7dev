CentOS 7 image with Java development tools
==========================================

This is a CentOS 7 image with the following additional tools installed:
- bzip2
- java-devel
- make
- mariadb client
- maven (3.0.6 & 3.3.9 in /opt/apache-maven-3.3.9/bin)
- mysql-connector-java
- postgresql-jdbc
- subversion
- unzip
- vim-enhanced
- which

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
