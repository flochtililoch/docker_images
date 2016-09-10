# Start the IPSec VPN Server

First, run this command on the Docker host to load the IPsec NETKEY kernel module:

```
sudo modprobe af_key
```

# Check server status

```
docker exec -it ipsec-vpn-server ipsec status
```


More details [here](https://github.com/hwdsl2/docker-ipsec-vpn-server#start-the-ipsec-vpn-server).
