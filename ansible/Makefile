all:
	ansible-playbook main.yml -i inventory.yml --ask-become-pass
setup:
	ansible-playbook playbooks/general_setup.yml -i inventory.yml --ask-become-pass
containers:
	ansible-playbook playbooks/deploy_containers.yml -i inventory.yml --ask-become-pass
secure-boot:
	ansible-playbook playbooks/secure_boot.yml -i inventory.yml --ask-become-pass
setup-nics:
	ansible-playbook playbooks/setup_nics.yml -i inventory.yml --ask-become-pass
