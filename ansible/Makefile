all:
	ansible-playbook main.yml -i inventory.yml --ask-become-pass
setup:
	ansible-playbook playbooks/main/general_setup.yml -i inventory.yml --ask-become-pass
containers:
	ansible-playbook playbooks/main/deploy_containers.yml -i inventory.yml --ask-become-pass
secure-boot:
	ansible-playbook playbooks/main/secure_boot.yml -i inventory.yml --ask-become-pass
setup-nics:
	ansible-playbook playbooks/main/setup_nics.yml -i inventory.yml --ask-become-pass
create-vyos-image:
	ansible-playbook playbooks/main/create_vyos_image.yml -i inventory.yml --ask-become-pass
setup-terraform:
	ansible-playbook playbooks/main/setup_terraform.yml -i inventory.yml --ask-become-pass

vyos:
	ansible-playbook vyos.yml -i inventory.yml
vyos-dns:
	ansible-playbook playbooks/vyos/dns_setup.yml -i inventory.yml
