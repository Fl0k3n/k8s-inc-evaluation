#!/bin/bash

date +%s%N

iperf3 -c <server_ip> -t -b 8000K -t 8 -l 800 
