#!/bin/sh

# passwd root
# narutofugen

apt-get update
apt-get install -y git python-m2crypto vim

cd /usr/local
git clone -b akkariiin/master https://github.com/shadowsocksrr/shadowsocksr.git
cd shadowsocksr
bash initcfg.sh

mv user-config.json user-config.json.backup
wget --no-check-certificate https://github.com/GF47/ssr_setup/raw/master/user-config.json
chmod 664 user-config.json
wget --no-check-certificate https://github.com/Ellean/across/raw/master/bbr.sh
chmod +x bbr.sh
bash bbr.sh

cd /usr/local/shadowsocksr/shadowsocks
python server.py
