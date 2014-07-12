#!/bin/bash
echo -e "\e[0;31m-------------------------Requirement---------------------\e[0;37m"
echo "Operation System : Ubuntu 64 bits"
echo -e "We will install Oracle Java on this computer...\n"
echo -e "Please input \e[0;32mcurrent user name\e[0;37m,we will execute some comment by lower permission user:\n"
read currentUser
sudo -u $currentUser echo -e "\e[0;31m----------------------------Step 1-----------------------\e[0;37m"
sudo -u $currentUser echo "(1)Download Oracle Java Development Kit(JDK) from official website : \"http://www.oracle.com/technetwork/java/javase/downloads/\" "
sudo -u $currentUser echo -e "(2)Extract by comment \e[0;32msudo tar xvzf file.tar.gz\e[0;37m and then put under \e[0;32mhome/"$currentUser"/Downloads\e[0;37m directory \n"

sudo -u $currentUser echo -e "\e[0;31m----------------------------Step 2-----------------------\e[0;37m"
sudo -u $currentUser echo "Please input the jdk version (Ex: jdk1.8.0_05): "
read jdkVersion
sudo -u $currentUser echo -e "We will help you install java ( $jdkVersion ) Within 5 minutes \n"

sudo -u $currentUser echo -e "\e[0;31m----------------------------Step 3-----------------------\e[0;37m"
sudo -u $currentUser echo -e "Create a directory and copy the jdk directory into /usr/local/java \n"
mkdir -p /usr/local/java/
cp -r ~/Downloads/$jdkVersion /usr/local/java
sudo -u $currentUser echo -e "\e[0;31m----------------------------Step 4-----------------------\e[0;37m"
sudo -u $currentUser echo -e "Set up file :  /etc/profilei \n"
sed -i '$aJAVA_HOME=/usr/local/java/'$jdkVersion /etc/profile
sed -i '$aPATH=$PATH:$HOME/bin:$JAVA_HOME/bin ' /etc/profile
sed -i '$aJRE_HOME=/usr/local/java/'$jdkVersion'/jre ' /etc/profile
sed -i '$aPATH=$PATH:$HOME/bin:$JRE_HOME/bin ' /etc/profile
sed -i '$aexport JAVA_HOME ' /etc/profile
sed -i '$aexport JRE_HOME ' /etc/profile
sed -i '$aexport PATH ' /etc/profile
sudo -u $currentUser echo -e "\e[0;31m----------------------------Step 5-----------------------\e[0;37m"
sudo -u $currentUser echo -e "Inform your Ubuntu Linux system where your Oracle Java JDK/JRE is located.\n"
update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/"$jdkVersion"/jre/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/"$jdkVersion"/bin/javac" 1 
update-alternatives --install "/usr/bin/jps" "jps" "/usr/local/java/"$jdkVersion"/bin/jps" 1

sudo -u $currentUser echo -e "\e[0;31m----------------------------Step 6-----------------------\e[0;37m"
sudo -u $currentUser echo -e "Inform your Ubuntu Linux system that Oracle Java JDK/JRE must be the default Java.\n"
update-alternatives --set java /usr/local/java/$jdkVersion/jre/bin/java
update-alternatives --set javac /usr/local/java/$jdkVersion/bin/javac

sudo -u $currentUser echo -e "\e[0;31m----------------------------Step 7-----------------------\e[0;37m"
sudo -u $currentUser echo -e "Reload your system wide PATH /etc/profile by typing the following command\n"
. /etc/profile

sudo -u $currentUser echo -e "\e[0;31m----------------------------Step 8-----------------------\e[0;37m"
sudo -u $currentUser echo "Check Java Version"
sudo -u $currentUser java -version 
