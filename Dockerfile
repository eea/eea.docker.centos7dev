#
# A development platform for Java 7 development
#
FROM centos:7
MAINTAINER Søren Roug <soren.roug@eea.europa.eu>

# Install common tools. Maven 3.0.6 is very old, so we also install a newer version
RUN yum install -y which vim-enhanced zip unzip bzip2 \
    git make maven subversion java-devel \
    mariadb mysql-connector-java \
    postgresql-jdbc \
 && curl --silent --output /opt/maven-3.3.9-bin.tar.gz http://ftp.download-by.net/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz \
 && tar -xz --directory=/opt --file=/opt/maven-3.3.9-bin.tar.gz

