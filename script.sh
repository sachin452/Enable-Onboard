#!/bin/bash
cd /home/ithum/Documents/workspace/script
python3 id-tech.py &
python3 batch_schedule.py &
#python3 heart_schedule.py &
python3 sync_schedule.py &
#cd ../dashboard
#python3 -m http.server 3000 &

