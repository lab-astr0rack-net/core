proxmox:
	ansible-playbook playbooks/proxmox.yml --tags bw --ask-become-pass
proxmox-setup:
	ansible-playbook playbooks/proxmox.yml --tags setup,bw --ask-become-pass
proxmox-containers:
	ansible-playbook playbooks/proxmox.yml --tags containers,bw --ask-become-pass
proxmox-sb:
	ansible-playbook playbooks/proxmox.yml --tags secure-boot,bw --ask-become-pass
proxmox-nics:
	ansible-playbook playbooks/proxmox.yml --tags setup-nics,bw --ask-become-pass
proxmox-vi:
	ansible-playbook playbooks/proxmox.yml --tags vyos-image,bw --ask-become-pass
proxmox-tf:
	ansible-playbook playbooks/proxmox.yml --tags setup-terraform,bw --ask-become-pass

vyos:
	ansible-playbook playbooks/vyos.yml --tags bw
vyos-setup:
	ansible-playbook playbooks/vyos.yml --tags setup,bw
vyos-dns:
	ansible-playbook playbooks/vyos.yml --tags dns,bw
vyos-tailscale:
	ansible-playbook playbooks/vyos.yml --tags tailscale,bw
vyos-interfaces:
	ansible-playbook playbooks/vyos.yml --tags interfaces,bw
vyos-dhcp:
	ansible-playbook playbooks/vyos.yml --tags dhcp,bw
vyos-nat:
	ansible-playbook playbooks/vyos.yml --tags nat,bw
vyos-firewall:
	ansible-playbook playbooks/vyos.yml --tags firewall,bw
