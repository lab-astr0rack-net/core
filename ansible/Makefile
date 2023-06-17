proxmox:
	ansible-playbook playbooks/proxmox.yml --ask-become-pass
proxmox-setup:
	ansible-playbook playbooks/proxmox.yml --tags setup --ask-become-pass
proxmox-containers:
	ansible-playbook playbooks/proxmox.yml --tags containers --ask-become-pass
proxmox-sb:
	ansible-playbook playbooks/proxmox.yml --tags secure-boot --ask-become-pass
proxmox-nics:
	ansible-playbook playbooks/proxmox.yml --tags setup-nics --ask-become-pass
proxmox-vi:
	ansible-playbook playbooks/proxmox.yml --tags vyos-image --ask-become-pass
proxmox-tf:
	ansible-playbook playbooks/proxmox.yml --tags setup-terraform --ask-become-pass

vyos:
	ansible-playbook playbooks/vyos.yml
vyos-setup:
	ansible-playbook playbooks/vyos.yml --tags setup
vyos-dns:
	ansible-playbook playbooks/vyos.yml --tags dns
vyos-tailscale:
	ansible-playbook playbooks/vyos.yml --tags tailscale

