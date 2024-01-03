proxmox:
	ansible-playbook playbooks/proxmox.yml --tags all,bw --ask-become-pass
proxmox-setup:
	ansible-playbook playbooks/proxmox.yml --tags setup,bw --ask-become-pass
proxmox-containers:
	ansible-playbook playbooks/proxmox.yml --tags containers,bw --ask-become-pass
proxmox-nics:
	ansible-playbook playbooks/proxmox.yml --tags setup-nics,bw --ask-become-pass
proxmox-oidc:
	ansible-playbook playbooks/proxmox.yml --tags setup-oidc,bw --ask-become-pass
proxmox-patch:
	ansible-playbook playbooks/proxmox.yml --tags patch,bw --ask-become-pass
proxmox-perms:
	ansible-playbook playbooks/proxmox.yml --tags perms,bw --ask-become-pass
proxmox-vi:
	ansible-playbook playbooks/proxmox.yml --tags vyos-image,bw --ask-become-pass
proxmox-tf:
	ansible-playbook playbooks/proxmox.yml --tags setup-terraform,bw --ask-become-pass

vyos:
	ansible-playbook playbooks/vyos.yml --tags all,bw
vyos-dry-run:
	ansible-playbook playbooks/vyos.yml --tags dry-run,bw --skip-tags always
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

lint:
	ansible-lint -x 'var-naming[no-role-prefix]'
