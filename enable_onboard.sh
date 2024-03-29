apt-get update
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

apt-get upgrade -y
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

apt-get update
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

apt-cache policy docker-ce
echo "\e[32m Updaet Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

apt install docker-ce -y
echo "\e[32m Updaet Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

#systemctl status docker
#echo "Done!!!"
#echo "Check the staus of docker: active"
#echo "================================================================================"

docker images
echo "\e[32m Update Done!!!\e[0m"
echo "Check the Docker Images Below"
echo "\e[32m =================================================================================================================================================\e[0m"

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

sudo chmod +x /usr/local/bin/docker-compose
echo "\e[32m Update Done!!!\e[0m"
echo "Executive file done"
echo "\e[32m =================================================================================================================================================\e[0m"

docker-compose --version
echo "\e[32m Update Done!!!\e[0m"
echo "Check Docker version"
echo "\e[32m =================================================================================================================================================\e[0m"

apt install apache2 -y
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

sudo apt install mysql-server -y
echo "\e[32m Updaet Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

sudo apt install php -y
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

systemctl restart apache2
echo "\e[32m Updaet Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

sudo apt update
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

sudo apt install phpmyadmin php-mbstring php-gettext
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

service mysql restart
echo "\e[32m Update Done!!!\e[0m"
echo "\e[32m =================================================================================================================================================\e[0m"

#sudo docker pull enablebox/enable_backend:latest
#echo "\e[32m Update Done!!!\e[0m"
#echo "\e[32m =================================================================================================================================================\e[0m"

sudo docker images
echo "\e[32m Update Done!!!\e[0m"
echo "Find the enablebox images"
echo "\e[32m =================================================================================================================================================\e[0m"



