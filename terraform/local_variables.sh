#!/bin/bash
#
if [ -z BW_SESSION ]
then
	export BW_SESSION=$(bw unlock --raw)
fi

export PG_CONN_STR=$(bw get password terraform-proxmox-postgres)
export TF_VAR_pm_password=$(bw get password terraform-proxmox-credentials)
