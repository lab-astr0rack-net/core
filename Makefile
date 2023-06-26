all: proxmox vyos
proxmox:
	$(MAKE) -C ansible proxmox
vyos:
	$(MAKE) -C terraform all
	$(MAKE) -C ansible vyos
lint:
	terraform fmt
	ANSIBLE_ROLES_PATH='ansible/roles:$$ANSIBLE_HOME/roles:/usr/share/ansible/roles:/etc/ansible/roles' ansible-lint ansible/
clean:
	$(MAKE) -C terraform clean
