.PHONY: lint lint-fix templates vms

lint:
	ansible-lint

lint-fix:
	ansible-lint --fix

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
