#!/bin/bash

VM_STATUS=$(/usr/sbin/qm list | awk '{print $1, $2, $3}' | column -t | sed 's/$/\\n/g' | tr -d '\n')
WEBHOOK='{{ discord_webhook_url }}'

DATA="{
  \"embeds\": [
    {
      \"author\": {
        \"name\": \"root\"
      },
      \"title\": \"Proxmox Lab Status\",
      \"description\": \"Status of VMs sent after Proxmox has tried to start all VMs selected for autoboot.\",
      \"color\": 15258703,
      \"fields\": [
        {
          \"name\": \"qm list\",
          \"value\": \"\`\`\`$VM_STATUS\`\`\`\"
        }
      ]
    }
  ]
}"

curl -X POST -H "Content-Type: application/json" -d "$DATA" "$WEBHOOK"
