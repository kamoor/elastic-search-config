# wget https://raw.githubusercontent.com/kamoor/elastic-search-config/master/install-controller.sh
# chmod 755 ./install.sh
# ./install.sh MASTER_NODE_IP

sudo apt-get update
sudo apt install awscli
sudo apt-get install openjdk-8-jre-headless

wget https://artifacts.elastic.co/downloads/kibana/kibana-5.4.1-linux-x86_64.tar.gz
tar -xzf kibana-5.4.1-linux-x86_64.tar.gz 

#./kibana-5.5.0-linux-x86_64/bin/kibana-plugin install x-pack

echo "server.host: 0.0.0.0" >> ./kibana-5.4.1-linux-x86_64/config/kibana.yml 
echo "server.port: 9200" >> ./kibana-5.4.1-linux-x86_64/config/kibana.yml 
echo "elasticsearch.url: http://$1:9200" >> ./kibana-5.4.1-linux-x86_64/config/kibana.yml 

sudo ./kibana-5.4.1-linux-x86_64/bin/kibana &

#install kibana
