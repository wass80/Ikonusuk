sudo apt-get install resolvconf
cat << EOS > /etc/network/interfaces
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
address $HOST_IP_ADDRESS
network 192.168.0.0
netmask 255.255.255.0
broadcast 192.168.0.255
gateway 192.168.0.1
dns-nameservers 192.168.0.1
EOS

sudo service networking restart
