#
# A platform for Java and Python development
#
FROM centos:7
MAINTAINER Søren Roug <soren.roug@eea.europa.eu>

# Install common tools. Maven 3.0.6 is very old, so we also install a newer version
RUN yum install -y which vim-enhanced zip unzip bzip2 wget dos2unix \
    git make maven subversion java-devel \
    mariadb mysql-connector-java \
    postgresql postgresql-jdbc \
    python python-ldap MySQL-python libxml2-python libxslt-python \
 && curl --silent --output /opt/maven-3.5.3-bin.tar.gz http://ftp.download-by.net/apache/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz \
 && tar -xz --directory=/opt --file=/opt/maven-3.5.3-bin.tar.gz

