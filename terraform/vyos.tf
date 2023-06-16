resource "proxmox_vm_qemu" "vyos-core" {
  name    = "vyos-core"
  desc    = "VyOS Core Router"
  qemu_os = "l26"
  bios    = "ovmf"
  vmid    = 100
  # Need to specify ide2 so the VM can see cloudinit CD
  boot        = "order=scsi0;ide2"
  target_node = var.pm_node
  onboot      = true
  startup     = "order=1"

  sockets    = 1
  cores      = 2
  memory     = 4096
  agent      = 1
  clone      = "vyos-1.4-rolling-cloudinit"
  full_clone = "true"
  scsihw     = "virtio-scsi-single"

  network {
    bridge  = "vmbr0"
    model   = "e1000"
    macaddr = "92:07:2B:55:57:C8"
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

