include .env
export $(shell sed 's/=.*//' .env)
.PHONY: vms env

vms :
	ansible-playbook -i hosts.yaml create-vms.yaml
