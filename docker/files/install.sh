#!/bin/sh
set -e

apt update -y
apt upgrade -y
apt install -y build-essential vim autoconf libtool m4 automake git curl openjdk-8-jdk openjdk-17-jdk maven

cd /files
curl -LO https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz
curl -LO https://dlcdn.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.tar.gz

mkdir -p /env /repos

# oracle jdk
cd /env
tar xf /files/jdk-7u80-linux-x64.tar.gz
mv jdk1.7.0_80 jdk7
tar xf /files/jdk-8u401-linux-x64.tar.gz
mv jdk1.8.0_401 jdk8

# maven
tar xf /files/apache-maven-3.8.8-bin.tar.gz

# maven http blocker
cp /files/settings.xml /env/apache-maven-3.8.8/conf/settings.xml

# protobuf
cd /files
tar xf protobuf-2.5.0.tar.gz
cd protobuf-2.5.0
./autogen.sh
./configure --prefix=/usr
make
make install
