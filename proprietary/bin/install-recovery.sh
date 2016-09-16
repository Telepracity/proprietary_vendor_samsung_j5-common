#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:11902252:083c578c6205d889f52eb3ecea91d3a5a8524d68; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:10747176:dc460fb7a607575d6463d05499b74a6061792bbb EMMC:/dev/block/bootdevice/by-name/recovery 083c578c6205d889f52eb3ecea91d3a5a8524d68 11902252 dc460fb7a607575d6463d05499b74a6061792bbb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
