# wget https://raw.githubusercontent.com/kamoor/elastic-search-config/master/install.sh
# chmod 755 ./install.sh
# ./install.sh MASTER_NODE_IP

sudo apt-get update
sudo apt install awscli
sudo apt-get install openjdk-8-jre-headless

wget https://artifacts.elastic.co/downloads/kibana/kibana-5.4.1-linux-x86.tar.gz
tar -xzf kibana-5.4.1-linux-x86.tar.gz

wget get kibana.yml
cp kibana.yl 

./kibana-5.4.1-linux-x86_64/bin/kibana-plugin install x-pack

sudo ./kibana-5.4.1-linux-x86_64/bin/kibana &

#install kibana
