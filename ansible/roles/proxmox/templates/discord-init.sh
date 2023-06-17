#!/bin/bash

VM_STATUS=$(/usr/sbin/qm list | awk '{print $1, $2, $3}' | column -t | sed 's/$/\\n/g' | tr -d '\n')
WEBHOOK='https://discord.com/api/webhooks/1080618281406300200/pHjJsK00uuOXP8mHM_kd9jXUDouF0sxvbV6HDO7cv-ylC1CXfPBXVLxHtCjJSfR5VOec'

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

