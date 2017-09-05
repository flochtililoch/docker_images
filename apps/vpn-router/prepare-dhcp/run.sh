# Enable IP Forwarding
echo "Enabling IP Forwarding"
sysctl -w net.ipv4.ip_forward=1

# Setup NAT
echo "Setting up NAT"
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
iptables -A FORWARD -i tun0 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i eth0 -o tun0 -j ACCEPT

# Find VPN tunnel IP
echo "Waiting for VPN IP"
while [ -z "$IP" ]; do
  IP=$(ip addr show | grep inet | awk -F " " '{print $NF"|"$2}' | grep tun0 | cut -d '|' -f 2)
  sleep 1
done

# Update DHCP configuration router IP
echo "Setting Router IP: $IP in DHCP configuration"
sed -e "s/option\srouters\s.*;/option routers $IP;/" -i /isc-dhcp-server/dhcpd.conf
