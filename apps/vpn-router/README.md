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

## Start app

```bash
$ ./run.sh vpn-router/
```
