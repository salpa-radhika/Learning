
jenkins set up in mac os

install using home brew 
 open brew.sh website copy the command for installing homebrew using terminal
ex: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
make sure you have admin access 

after completion it would suggest few commands for setting the path 


now check the brew version using brew --version and also use brew help for understanding brew commands.

now type brew install jenkins-lts in terminal for setting up jenkins

it provides Ip and port info at the execution 

httpListenAddress=127.0.0.1 --httpPort=8080

start jenkins using command -> brew services start jenkins-lts 
