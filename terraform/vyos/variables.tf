variable "pm_api_url" {
  default = "https://proxmox.lab.astr0rack.net/api2/json"
}

variable "pm_user" {
  default = "terraform@pve"
}

variable "pm_password" {
  default   = "CHANGEME"
  sensitive = true
}

variable "pm_node" {
  default = "proxmox"
}

