#!/bin/bash

date +%s%N

iperf3 -c <server_ip> -u -b 8000K -t 8 -l 1K
