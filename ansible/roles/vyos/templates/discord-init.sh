#!/bin/bash

while [ -z "$TAILSCALE_STATUS" ]
do
	TAILSCALE_STATUS=$(tailscale status | grep vyos | awk '{print $2"  "$1}')
done

WEBHOOK='{{ discord_webhook_url }}'

DATA="{
  \"embeds\": [
    {
      \"author\": {
        \"name\": \"root\"
      },
      \"title\": \"VyOS Lab Status\",
      \"description\": \"Status of VyOS on boot.\",
      \"color\": 15258703,
      \"fields\": [
        {
          \"name\": \"tailscale status\",
          \"value\": \"\`\`\`$TAILSCALE_STATUS\`\`\`\"
        }
      ]
    }
  ]
}"

curl -s -X POST -H "Content-Type: application/json" -d "$DATA" "$WEBHOOK"
