# !/bin/bash
#
# File: server-run
#
# Purpose: Run the Font Awesome container as a local server
#

docker stop fontawesome-server
docker rm   fontawesome-server
docker run -p 7998:7998 -v $(pwd):/site -e VIRTUAL_HOST="${1}" --network=host --name fontawesome-server kikicarbonell/fontawesome-server:latest
