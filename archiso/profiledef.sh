#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="ashos"
iso_label="ASHOS_$(date +%Y%m)"
iso_publisher="Ash OS <https://github.com/ghostx31/ash-os>"
iso_application="Ash OS installation Disk"
iso_version="$(date +%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  # ["/root"]="0:0:750"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/usr/local/bin/waydroid-aurora"]="0:0:755"
  
)
