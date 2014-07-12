Set up Java Environment
=========
The shell script is referenced by [Install JAVA] website.
It will install Oracle JAVA and store at PATH /usr/local/java automatically.

How to run the shell script?
=========
(1)Modify .sh to give execute permission to everybody
```sh
chmod a+x setUpJava.sh
```

(2)Because of the permission while installing Java, we have to execute the shell script with
```sh
sudo ./setUpJava.sh
```
A normal user can gain root acces when we add the "sudo" to the front

Code explaintion
=========
(1)Get current user name to execute partial comments with lower permission

(2)The color of shell script we can reference [Colored shell script]

(white words) \e[0;32m (green words) \e[0;37m (white words)
```sh
... by comment \e[0;32m sudo tar xvzf file.tar.gz \e[0;37m and then ....
```
(3)Append {Content} at the bottom of {file}
```sh
sed -i '$a {Content}' {file}
```


[Install JAVA]:http://www.wikihow.com/Install-Oracle-Java-on-Ubuntu-Linux
[Colored shell script]:http://stackoverflow.com/questions/16843382/colored-shell-script-output-library
