sudo ntpdate ntp1.jst.mfeed.ad.jp 

sudo apt-add-repository ppa:openjdk-r/ppa
sudo apt-get -y update

echo "Asia/Tokyo" | sudo tee /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata 

export MASTER_IP_ADDRES=192.168.220.55
