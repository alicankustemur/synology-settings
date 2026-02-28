#!/bin/bash
case "$1" in
  start)
    sleep 60
    /usr/syno/bin/synopkg stop SynologyPhotos
    /usr/syno/bin/synopkg stop SynologyDrive
    /usr/syno/bin/synopkg stop Spreadsheet
    /usr/syno/bin/synopkg stop SynoAnalytics
    /usr/syno/bin/synopkg stop USBCopy
    /usr/syno/bin/synopkg stop ScsiTarget
    /usr/syno/bin/synopkg stop SupportService
    /usr/syno/bin/synopkg stop DiagnosisTool
    /usr/syno/bin/synopkg stop ActiveInsight
    /usr/syno/bin/synopkg stop HyperBackup
    ;;
esac
