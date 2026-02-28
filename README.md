# Synology NAS Settings

Boot scripts for Synology NAS. These go in `/usr/local/etc/rc.d/` and run automatically on startup.

## Scripts

### `rc.d/swap.sh`
Enables a 10GB swap file on Btrfs volume via loop device.
- Swap file location: `/volume1/swapfile`
- Required because Btrfs doesn't support swap files directly

### `rc.d/stop-services.sh`
Stops unused Synology packages 60 seconds after boot to free memory.

Stopped services:
- SynologyPhotos
- SynologyDrive
- Spreadsheet
- SynoAnalytics
- USBCopy
- ScsiTarget
- SupportService
- DiagnosisTool
- ActiveInsight
- HyperBackup

## Deployment

```bash
scp -O rc.d/*.sh minda@192.168.3.41:~/
ssh minda@192.168.3.41 "sudo mv ~/swap.sh ~/stop-services.sh /usr/local/etc/rc.d/ && sudo chmod 755 /usr/local/etc/rc.d/swap.sh /usr/local/etc/rc.d/stop-services.sh"
```
