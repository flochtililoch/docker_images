# VPN Router

Connect your Apple TV to your Raspberry PI via ethernet, and have its traffic routed through a VPN.

## Setup (Raspberry PI)
- Copy VPN configuration to `openvpn-client/openvpn.ovpn`
- Configure static IP for eth0:
  ```sh
  $ cat /etc/network/interfaces.d/eth0
  allow-hotplug eth0
  iface eth0 inet static
  address 10.1.0.1
  netmask 255.255.255.0
  gateway 10.8.0.10
  ```
- Setup IP forwarding:
  ```sh
  $ echo -e '\n#Enable IP Routing\nnet.ipv4.ip_forward = 1' | sudo tee -a /etc/sysctl.conf
  $ sudo sysctl -p
  ```
- Configure NAT:
  ```
  sudo iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
  sudo iptables -A FORWARD -i tun0 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT
  sudo iptables -A FORWARD -i eth0 -o tun0 -j ACCEPT
  ```
- Persist NAT configuration: (optional)
  ```sh
  $ sudo apt-get install iptables-persistent -y
  $ sudo netfilter-persistent save
  $ sudo systemctl enable netfilter-persistent
  ```

## Start container

```bash
$ ./run.sh vpn-router/
```
