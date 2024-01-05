# Alma Linux image with Java development tools

This is a Alma Linux 9 image with the following additional tools installed:
- bzip2
- java-devel
- make
- mariadb client
- maven (3.0.5 & 3.9.1 in /opt/apache-maven-3.9.1/bin)
- maria-connector-java
- python
- python3-ldap
- python3-PyMySQL
- python3-libxml2
- python3-lxml
- postgresql-jdbc
- subversion
- unzip
- vim-enhanced
- nano editor
- which
- dos2unix
- openssh and rsync
- lynx (text-based webbrowser)

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

