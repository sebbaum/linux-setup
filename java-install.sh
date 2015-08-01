#!/bin/bash
# Set java path and  version variables						#
JAVA_VERSION=jdk1.8.0_51
JAVA_DIR=/opt/java

#tar -xzvf ~/Downloads/jdk-8-linux-i586.tar.gz
mkdir $JAVA_DIR
sudo mv $JAVA_VERSION/ $JAVA_DIR

#########################################################################################################
# http://askubuntu.com/questions/56104/how-can-i-install-sun-oracles-proprietary-java-jdk-6-7-8-or-jre  #
# This will assign Oracle JDK a priority of 1,								#
# which means that installing other JDKs will replace it as the default. 				#
# Be sure to use a higher priority if you want Oracle JDK to remain the default.			#	
#########################################################################################################
sudo update-alternatives --install "/usr/bin/java" "java" "$JAVA_DIR/$JAVA_VERSION/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "$JAVA_DIR/$JAVA_VERSION/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "$JAVA_DIR/$JAVA_VERSION/bin/javaws" 1

# Correct the file ownership and the permissions of the executables:
sudo chmod a+x /usr/bin/java 
sudo chmod a+x /usr/bin/javac 
sudo chmod a+x /usr/bin/javaws
sudo chown -R root:root $JAVA_DIR/$JAVA_VERSION

#Set the correct alternative
sudo update-alternatives --config java
sudo update-alternatives --config javac
sudo update-alternatives --config javaws

#########################################################################################################
# In case of error when executing the "java" command: "bash: /usr/bin/java: No such file or directory"  #
# uncomment the next line:										#
## NOTE: ## This problem is caused typically in 32b version						#
#########################################################################################################
#sudo apt-get install libc6-i386
