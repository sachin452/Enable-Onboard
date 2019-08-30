#!/bin/bash
cd /home/$USER/Documents/workspace/
docker-compose up &
ngrok http -subdomain=gmp77 4000 &
