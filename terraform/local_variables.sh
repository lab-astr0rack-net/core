#!/bin/bash
#
export BW_SESSION=$(bw unlock --raw)

export PG_CONN_STR=$(bw get password terraform-proxmox-postgres)
export PM_USER=$(bw get username terraform-proxmox-credentials)
export PM_PASS=$(bw get password terraform-proxmox-credentials)
