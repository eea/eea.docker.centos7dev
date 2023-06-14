#
# A platform for Java and Python development
#
FROM centos:7.9.2009
MAINTAINER Søren Roug <soren.roug@eea.europa.eu>

# Install common tools. Maven 3.0.5 is very old, so we also install a newer version
RUN yum install -y rsync openssh elinks file which \
    vim-enhanced nano zip unzip bzip2 wget dos2unix \
    git make maven subversion java-devel \
    mariadb mysql-connector-java \
    postgresql postgresql-jdbc \
    python python-ldap MySQL-python libxml2-python libxslt-python \
 && curl --silent --output /opt/maven-bin.tar.gz https://dlcdn.apache.org/maven/maven-3/3.9.2/binaries/apache-maven-3.9.2-bin.tar.gz \
 && tar -xz --directory=/opt --file=/opt/maven-bin.tar.gz

