#!/bin/bash

# Define the maximum bandwidth (100kBps)
max_bandwidth=8000

# Define the initial bandwidth (40kBps)
initial_bandwidth=3200

# Define the increment (10kBps per half second)
increment=800

date +%s%N

# Loop to increase bandwidth gradually
for ((bw=$initial_bandwidth; bw<=$max_bandwidth; bw+=$increment))
do
    echo "Sending UDP traffic at $bw kBps"
    iperf3 -c <server_ip> -u -b ${bw}K -t 1 -l 1K # Change <server_ip> to your server's IP
done
