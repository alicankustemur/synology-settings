#!/bin/bash
case "$1" in
  start)
    if ! swapon --show | grep -q loop; then
      LOOPDEV=$(losetup --find --show /volume1/swapfile)
      mkswap "$LOOPDEV"
      swapon "$LOOPDEV"
    fi
    ;;
  stop)
    for dev in $(losetup -j /volume1/swapfile | cut -d: -f1); do
      swapoff "$dev" 2>/dev/null
      losetup -d "$dev" 2>/dev/null
    done
    ;;
esac
