#!/bin/bash

if [ "$PRIVKEY" == "" ]; then
	PRIVKEY=$(wg genkey)
	echo "ENV PRIVKEY not set; setting to $PRIVKEY"
fi

echo "Your PUBKEY is $(echo $PRIVKEY | wg pubkey)"

if [ "$PEERKEY" == "" ]; then
	echo "ENV PEERKEY not set; giving up."
	exit
fi

if [ "$PEERADDR" != "" ]; then
	PEERCMD="endpoint $PEERADDR"
fi

echo "Adding interface 'wg0'"
ip link add dev wg0 type wireguard

echo "Adding IP range for 'wg0'"
ip addr add dev wg0 $OWNIP/$BLOCKSIZE

echo "Setting up wireguard-specific options"
echo "$PRIVKEY" > /tmp/privkey
wg set wg0 private-key /tmp/privkey listen-port $LPORT peer $PEERKEY allowed-ips $OWNIP/$BLOCKSIZE $PEERCMD

echo "Setting interface 'wg0' up"
ip link set up wg0

echo "Entering eternal loop, goodbye ,o/"

while sleep 60; do
	date
	wg show
done