# ansible-proxmox

Playbooks to manage Proxmox resources

## API Key

This playbook requires an API key with relevant privileges

1. Navigate to `Datacenter -> Permissions -> Roles` and create a new role with the following permissions

```
Datastore.Allocate
Datastore.AllocateSpace
VM.Allocate
VM.Config.* # All actions starting with VM.Config
```

2. Create a new API token and ensure privilige separation is enabled. Store the credentials in a `.env` file within the project's root directory

```
PROXMOX_TOKEN_ID=<TOKEN_ID>
PROXMOX_TOKEN_SECRET=<TOKEN_SECRET>
```

3. Navigate to `Datacenter -> Permissions` and add a new API token permissions to the created role

## Usage

Populate the settings in `group_vars/all.yaml` and run the following commands documented below

```
# Provision VMs
make vms
```
