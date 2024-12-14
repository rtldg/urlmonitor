#!/bin/bash
set -euo pipefail
while true; do
	sleep 2
	if curl --output /dev/null --silent --fail "$TARGETURL"; then
		echo "good"
	else
		echo "bad"
		/app/discord.sh --webhook-url="$SECRETWEBHOOK" --username "$DISCORDNAME" --text "$DISCORDTEXT"
	fi
	sleep 300
done
