resource "proxmox_vm_qemu" "vyos-core" {
	name = "vyos-core"
	desc = "VyOS Core Router"
	qemu_os = "l26"
	bios = "ovmf"
	boot = "order=scsi0;ide2"
	target_node = var.pm_node
	onboot=true
	startup="order=1"

	sockets = 1
	cores = 2
	memory = 4096
	agent = 1
	clone = "vyos-1.4-rolling-cloudinit"
	full_clone = "true"
	scsihw = "virtio-scsi-single"

	network {
	 bridge    = "vmbr0"
	 model     = "e1000"
	}
	lifecycle {
      ignore_changes = [
        disk,
      ]
    }

	os_type = "cloud-init"

	cicustom                = "user=local:snippets/vyos-cloud-config.yml"
	cloudinit_cdrom_storage = "local"
}

output "vyos_default_ip" {
  value = proxmox_vm_qemu.vyos-core.default_ipv4_address
}

