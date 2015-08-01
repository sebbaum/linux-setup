#!/bin/bash

DOWNLOAD_DIR=~/Downloads
cd $DOWNLOAD_DIR
wget http://download.jboss.org/wildfly/8.0.0.Final/wildfly-8.0.0.Final.tar.gz
tar -xzvf wildfly-8.0.0.Final.tar.gz
mv wildfly-8.0.0.Final ~