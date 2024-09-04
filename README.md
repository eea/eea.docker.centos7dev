# Alma Linux image with Java development tools

This is a Alma Linux 9 image with the following additional tools installed:
- bzip2
- dos2unix
- java-devel
- lynx (text-based webbrowser)
- make
- maria-connector-java
- mariadb client
- maven (3.0.5 & 3.9.1 in /opt/apache-maven-3.9.1/bin)
- nano editor
- netcat
- openssh and rsync
- postgresql-jdbc
- python
- python3-ldap
- python3-libxml2
- python3-lxml
- python3-PyMySQL
- subversion
- telnet
- unzip
- vim-enhanced
- which

It used to be CentOS 7, but the project has terminated. Alma is binary compatible.

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
pushed to GitHub. To ensure that you always have an immutable build for production
you create a new tag in GitHub.

    $ git ci -a
    $ git push      # Will create 'latest'
    $ version=3.0.0
    $ git tag -a $version -m "Release $version"
    $ git push origin $version

