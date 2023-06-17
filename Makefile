all: proxmox vyos
proxmox:
	$(MAKE) -C ansible proxmox
vyos:
	$(MAKE) -C terraform all
	$(MAKE) -C ansible vyos
clean:
	$(MAKE) -C terraform clean
