#
# A platform for Java and Python development
#
FROM almalinux:9.4
MAINTAINER Søren Roug <soren.roug@eea.europa.eu>

# Install common tools.
RUN yum install -y rsync openssh lynx file which procps-ng \
    vim-enhanced nano zip unzip bzip2 wget dos2unix \
    git make maven subversion java-devel bind-utils \
    mariadb mariadb-java-client \
    nmap-ncat procps-ng net-tools openldap-clients \
    postgresql postgresql-jdbc \
    python python3-ldap python3-PyMySQL python3-libxml2 python3-lxml \
    telnet

