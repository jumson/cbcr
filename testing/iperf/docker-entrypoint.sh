#!/bin/sh

ip addr add $IP_ADDR/$LEN dev $INT
ip link set mtu 1450 dev $INT
ip r d default
ip r a default via $GATEWAY

exec /bin/sh -c "iperf3 $IPERF"
