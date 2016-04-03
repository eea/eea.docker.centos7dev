# A development platform
FROM centos:7

RUN yum install -y git mariadb make maven which vim-enhanced unzip bzip2 subversion java-devel mysql-connector-java postgresql-jdbc \
 && curl --silent --output /opt/maven-3.3.9-bin.tar.gz http://ftp.download-by.net/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz \
 && tar -xz --directory=/opt --file=/opt/maven-3.3.9-bin.tar.gz

