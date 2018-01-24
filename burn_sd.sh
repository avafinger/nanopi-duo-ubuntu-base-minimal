#!/bin/bash

function pt_error()
{
    echo -e "\033[1;31mERROR: $*\033[0m"
}

function pt_warn()
{
    echo -e "\033[1;31mWARN: $*\033[0m"
}

function pt_info()
{
    echo -e "\033[1;32mINFO: $*\033[0m"
}

function pt_ok()
{
    echo -e "\033[1;33mOK: $*\033[0m"
}

mmc="mmcblk"
out="$1"

if [ -z "$out" ]; then
    pt_error "Usage: $0 <SD card> (SD CARD: /dev/sdX  where X is your sd card letter or /dev/mmcblkY  where Y your device number)"
    exit 1
fi

if [ $UID -ne 0 ]
    then
    pt_error "Please run as root."
    exit
fi

if [[ $out == *$mmc* ]]; 
then
part="p"
else
part=""
fi


pt_info "Umounting $out, please wait..."
sync
umount ${out}* >/dev/null 2>&1
sleep 1
sync

set -e
pt_info "Formating sd card $out ..."

part_position=24576   # KiB
boot_size=128         # MiB
# Create beginning of disk
pt_info "Zeroing mbr on $out ..."
dd if=/dev/zero bs=1M count=$((part_position/1024)) of="$out"
sync

pt_info "Creating partition on $out ..."
pt_info "p1: $((part_position*2)) and size: ${boot_size}M, $((part_position*2 + boot_size*1024*2))"
# Add partition table
cat <<EOF | fdisk "$out"
o
n
p
1
$((part_position*2))
+${boot_size}M
t
83
n
p
2
$((part_position*2 + boot_size*1024*2))

t
2
83
w
EOF

sleep 1
sync
partprobe -s ${out}
sync

pt_warn "Formating $out ..."
# Create boot file system (ext4)
dd if=/dev/zero bs=1M count=${boot_size} of=${out}1
mkfs.ext4 -F -b 4096 -E stride=2,stripe-width=1024 -L boot ${out}${part}1

# Create ext4 file system for rootfs
mkfs.ext4 -F -b 4096 -E stride=2,stripe-width=1024 -L rootfs ${out}${part}2
sync
sudo tune2fs -O ^has_journal ${out}${part}2
sync


pt_info "Geometry created and sd card '$out' formatted, now flashing bootloader..."
sleep 2

pt_info "Reading partition..."
sudo partprobe
sleep 2
sync
sudo partprobe ${out}
sleep 2

set -e
pt_warn "Flashing $out...."
dd if=./bootloader.bin conv=notrunc bs=1k seek=8 of=$out
sync
set +e

pt_warn "Flashing boot and rootfs....(wait till finished)"
pt_info "Writing boot..."
mkdir -p eboot
sync
sudo mount $out$part"1" eboot
sleep 2
sync
sudo tar -xvpzf boot.tar.gz -C ./eboot --numeric-ow
sync
sudo umount eboot
sleep 1
rm -fR eboot
sync


pt_info "Writing rootfs..."
mkdir -p erootfs
sync
sudo mount $out$part"2" erootfs
sleep 2
sync
sudo tar -xvpzf rootfs.tar.gz -C ./erootfs --numeric-ow
sync
sudo umount erootfs
sleep 2
rm -fR erootfs
sync

pt_ok "Done - Now you can remove the SD CARD '$out', make sure you umount SD CARD and then boot the board with this SDCARD!"

