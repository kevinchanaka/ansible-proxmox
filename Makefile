.PHONY: templates vms

templates:
	@set -a; \
	. ./.env; \
	set +a; \
	ansible-playbook -i localhost playbooks/templates.yaml

vms:
	@set -a; \
	. ./.env; \
	set +a; \
	ansible-playbook -i localhost playbooks/vms.yaml
