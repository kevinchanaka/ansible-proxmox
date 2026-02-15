# ansible-proxmox

Playbooks to provision Proxmox resources

## Setup

1. Copy `.env.template` file, specify required information and rename file to `.env`

2. Copy `group_vars/all.template.yaml`, specify required information and rename file to `group_vars/all.yaml`

3. Follow instructions in `node_setup` to setup Proxmox nodes

## Usage

Run `make template` to create VM templates

Run `make vms` to create VMs using templates
