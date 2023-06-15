#!/bin/bash
#
if [ -z BW_SESSION ]
then
	export BW_SESSION=$(bw unlock --raw)
fi

export PG_CONN_STR=$(bw get password terraform-proxmox-postgres)
export PM_USER=$(bw get username terraform-proxmox-credentials)
export PM_PASS=$(bw get password terraform-proxmox-credentials)
