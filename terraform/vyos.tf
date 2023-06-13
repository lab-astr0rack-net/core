terraform {
	backend "pg" {
		schema_name = "vyos"
	}
	required_providers {
		proxmox = {
			source = "Telmate/proxmox"
			version = "2.9.14"
		}
	}
}

provider "proxmox" {
	# Configuration options
	pm_api_url = "https://proxmox.lab.astr0rack.net/api2/json"
}
