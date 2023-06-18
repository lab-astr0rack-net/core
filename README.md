# proxmox

A Infastructure as Code network security/development lab built using [Proxmox](https://www.proxmox.com/), [VyOS](https://vyos.io/), and [Tailscale](https://tailscale.com/).

## Overview

Essentially this repository holds the configuration for the core of the lab:

!(docs/img/lab.svg)

### Proxmox

The Proxmox host is provisioned using Ansible and is meant to turn a Debian 11 host into a Proxmox VE 7 server.

The webui is hosted behind a Caddy container with Let's Encrypt TLS.

This also builds a Postgres container for holding Terraform state.

Watchtower is also included for automatic container updates.

### VyOS

The VyOS VM is provisioned using Terraform and Ansible.  It serves as the core firewall of the lab, performing routing and DNS functions.

The DNS server is a Bind9 container which allows for DNS records to be updated on the fly with Terraform.  This functionality will be utilized in other repositories for ephemeral VM deployment and destruction.

The VyOS image being used is a custom one built with Github Actions here: https://github.com/astr0n8t/vyos-tailscale-gha/ (This image includes cloud-init support as well as Tailscale built in)

### Tailscale

Tailscale is initialized from the VyOS core router and allows for external users to access the Lab and Dev networks.  It also allows for GitHub Actions to connect to the tailnet via ephemeral nodes and apply configurations automatically. (This functionality needs to be built out currently)

