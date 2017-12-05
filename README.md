# nanopi-duo-ubuntu-base-minimal
NanoPi DUO - Ubuntu Xenial Base Minimal Image (How to)

* mainline kernel 4.14.0
* mainline kernel 4.14.3

For convenience you can burn the ubuntu-minimal-image running:

	sudo chmod +x *.sh
	sudo ./burn_sd.sh /dev/sdX 
	or 
	sudo ./burn_sd.sh /dev/mmcblkN

where X is a letter from [b,c,...,f] and N is a number from [0,1,2...,9]

#warning
Make sure you find the correct device letter if you use USB reader/writer or device number if you use a builtin memory card reader/writer or you may WIPE your hdd

#History Log:
* initial commit
* added kernel 4.14 files (boot, Image and modules)
* added bootloader, format_sd.sh and burn_sd.sh

#To be continue:
* upload kernel 4.14.3
* finish README instructions
