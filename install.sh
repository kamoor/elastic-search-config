# wget https://raw.githubusercontent.com/kamoor/elastic-search-config/master/install.sh
# chmod 755 ./install.sh
# ./install.sh
sudo apt-get update
sudo apt install awscli
sudo apt-get install openjdk-8-jre-headless
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.deb
sudo dpkg -i elasticsearch-5.4.0.deb
sudo mkdir /es
sudo mkdir /es/data
sudo mkdir /es/logs
sudo chown -R elasticsearch:elasticsearch /es/

wget -O elasticsearch.yml https://raw.githubusercontent.com/kamoor/elastic-search-config/master/elasticsearch.yml
wget -O jvm.options https://raw.githubusercontent.com/kamoor/elastic-search-config/master/jvm.options
sudo cp ./elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
sudo cp ./jvm.options /etc/elasticsearch/jvm.options

sudo service elasticsearch start
