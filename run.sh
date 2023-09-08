#!/bin/bash

while true; do
  sh tcx.sh
  python3 /root/running_page/running_page/scripts/tcx_sync.py
  sleep 3m
done
