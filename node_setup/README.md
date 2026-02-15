# Proxmox node setup

This folder stores documents various configurations for new Proxmox nodes

1. Copy the `boot.sh` script to `/root` directory and add the following entry into crontab

```bash
@reboot /root/boot.sh
```

2. Ensure enterprise repositories are disabled. This can be done in `Node` -> `Updates` -> `Repositories` within the Proxmox user interface
