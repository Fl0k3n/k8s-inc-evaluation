#!/bin/bash

# Define the maximum bandwidth (100kBps)
max_bandwidth=12000

# Define the initial bandwidth (40kBps)
initial_bandwidth=8000

# Define the increment (10kBps per half second)
increment=1000

date +%s%N

# Loop to increase bandwidth gradually
for ((bw=$initial_bandwidth; bw<=$max_bandwidth; bw+=$increment))
do
    echo "Sending TCP traffic at $bw kBps"
    iperf3 -c <server_ip> -t -b ${bw}K -t 2 -l 800 # Change <server_ip> to your server's IP
done
