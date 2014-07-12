Set up Java Environment
=========
The shell script is referenced by [Install JAVA] website.
It will install Oracle JAVA and store at PATH /usr/local/java automatically.

How to run the shell script?
=========
(1)Modify .sh permission to Give execute permission to everybody
```sh
chmod a+x setUpJava.sh
```

(2)Because of the permission, we can execute the shell script with
```sh
sudo bash setUpJava.sh
```
A normal user can gain root acces when we add the "sudo" to the front

Code explaintion
=========
(1)Get current user name in Bash script


(2)Execute code with user "johnny" 
```sh
sudo -u johnny "Comment"
```
(3)Append {Content} at the bottom of {file}
```sh
sed -i '$a {Content}' {file}
```


[Install JAVA]:http://www.wikihow.com/Install-Oracle-Java-on-Ubuntu-Linux
