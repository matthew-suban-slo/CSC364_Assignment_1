#!/bin/bash
# Run all routers in the background, except router1 which runs in the foreground
# Usage: bash run_network.sh

cd "$(dirname "$0")"

python3 router5.py &
python3 router6.py &
sleep 1
python3 router3.py &
python3 router4.py &
sleep 1
python3 router2.py &
sleep 1

echo "All routers except router1 started in background. Running router1 in foreground:"
python3 router1.py
