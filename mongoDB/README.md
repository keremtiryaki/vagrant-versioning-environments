```
puppet module install puppetlabs-mongodb --target-dir modules

vagrant up standalone

vagrant package standalone --output mongodb.box

curl http://media.mongodb.org/zips.json?_ga=1.135526964.407759570.1451281595 > ./data/zips.json 

vagrant box add mongodb.box --name mongodb

vagrant up /zip*/

```