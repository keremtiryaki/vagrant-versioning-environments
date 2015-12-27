apt-get -y update

apt-get -y install nginx

rm -rf /etc/nginx/sites-enabled
cp -r /vagrant/sites-enabled /etc/nginx

service nginx start

#simple test
LOCALHOST_HTML_RESULT="`wget -qO- http://localhost`"
if [[ $LOCALHOST_HTML_RESULT == *"Welcome to nginx!"* ]]; then
	echo -e "\033[33;36mVAGRANT IS WORKING";
else
	echo -e "\033[33;35mVAGRANT HAS FAILED";
fi