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
	ansible-playbook playbooks/vyos.yml --tags all
vyos-dry-run:
	ansible-playbook playbooks/vyos.yml --tags dry-run,bw --skip-tags always
vyos-prep:
	ansible-playbook playbooks/vyos.yml --tags prep,bw
vyos-users:
	ansible-playbook playbooks/vyos.yml --tags users,bw
vyos-vrf:
	ansible-playbook playbooks/vyos.yml --tags vrf,bw
vyos-interfaces:
	ansible-playbook playbooks/vyos.yml --tags interfaces,bw
vyos-services:
	ansible-playbook playbooks/vyos.yml --tags services,bw
vyos-dhcp:
	ansible-playbook playbooks/vyos.yml --tags dhcp,bw
vyos-routing:
	ansible-playbook playbooks/vyos.yml --tags routing,bw
vyos-nat:
	ansible-playbook playbooks/vyos.yml --tags nat,bw
vyos-firewall:
	ansible-playbook playbooks/vyos.yml --tags firewall,bw
vyos-containers:
	ansible-playbook playbooks/vyos.yml --tags containers,bw

lint:
	ansible-lint -x 'var-naming[no-role-prefix]'
