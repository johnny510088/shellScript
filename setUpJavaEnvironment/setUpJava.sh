sudo -u johnny echo "-------------------------Requirement---------------------"
sudo -u johnny echo "Operation System : Ubuntu 64 bits"
sudo -u johnny echo -e "We will install Oracle Java on this computer...\n"
sudo -u johnny echo "----------------------------Step 1-----------------------"
sudo -u johnny echo "(1)Download Oracle Java Development Kit(JDK) from official website : \"http://www.oracle.com/technetwork/java/javase/downloads/\" "
sudo -u johnny echo -e "(2)Extract by the comment :\"sudo tar xvzf file.tar.gz\" and then put under \"home/user/Download\" directory \n"

sudo -u johnny echo "----------------------------Step 2-----------------------"
sudo -u johnny echo "Please input the jdk version (Ex: jdk1.8.0_05): "
read jdkVersion
sudo -u johnny echo -e "We will help you install java ( $jdkVersion ) Within 5 minutes \n"

sudo -u johnny echo "----------------------------Step 3-----------------------"
sudo -u johnny echo -e "Create a directory and copy the jdk directory into /usr/local/java \n"
mkdir -p /usr/local/java/
cp -r ~/Downloads/$jdkVersion /usr/local/java
sudo -u johnny echo "----------------------------Step 4-----------------------"
sudo -u johnny echo -e "Set up file :  /etc/profilei \n"
sed -i '$aJAVA_HOME=/usr/local/java/'$jdkVersion /etc/profile
sed -i '$aPATH=$PATH:$HOME/bin:$JAVA_HOME/bin ' /etc/profile
sed -i '$aJRE_HOME=/usr/local/java/'$jdkVersion'/jre ' /etc/profile
sed -i '$aPATH=$PATH:$HOME/bin:$JRE_HOME/bin ' /etc/profile
sed -i '$aexport JAVA_HOME ' /etc/profile
sed -i '$aexport JRE_HOME ' /etc/profile
sed -i '$aexport PATH ' /etc/profile
sudo -u johnny echo "----------------------------Step 5-----------------------"
sudo -u johnny echo -e "Inform your Ubuntu Linux system where your Oracle Java JDK/JRE is located.\n"
update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/"$jdkVersion"/jre/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/"$jdkVersion"/bin/javac" 1 

sudo -u johnny echo "----------------------------Step 6-----------------------"
sudo -u johnny echo -e "Inform your Ubuntu Linux system that Oracle Java JDK/JRE must be the default Java.\n"
update-alternatives --set java /usr/local/java/$jdkVersion/jre/bin/java
update-alternatives --set javac /usr/local/java/$jdkVersion/bin/javac

sudo -u johnny echo "----------------------------Step 7-----------------------"
sudo -u johnny echo -e "Reload your system wide PATH /etc/profile by typing the following command\n"
. /etc/profile

sudo -u johnny echo "----------------------------Step 8-----------------------"
sudo -u johnny echo "Check Java Version"
sudo -u johnny java -version 
