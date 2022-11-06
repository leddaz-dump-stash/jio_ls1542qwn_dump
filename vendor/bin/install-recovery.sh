#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:14ff211df45d132a9587a969d677d01b045c5fef; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:14ff211df45d132a9587a969d677d01b045c5fef && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
