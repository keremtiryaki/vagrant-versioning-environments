#!/bin/bash

dpkg -s mongodb-clients &>/dev/null || {
	apt-get install -y mongodb-clients	
}

mongoimport --host localhost:27018 --db test --collection zips < /vagrant/data/zips.json