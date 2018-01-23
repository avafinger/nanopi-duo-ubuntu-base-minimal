# nanopi-duo-ubuntu-base-minimal
NanoPi DUO - Ubuntu Xenial Base Minimal Image (How to)

* mainline kernel 4.14.0
* mainline kernel 4.14.3 (deb package)

For convenience you can burn the ubuntu-minimal-image running:

	sudo chmod +x *.sh
	sudo ./burn_sd.sh /dev/sdX 
	or 
	sudo ./burn_sd.sh /dev/mmcblkN

where X is a letter from [b,c,...,f] and N is a number from [0,1,2...,9]

# warning
Make sure you find the correct device letter if you use USB reader/writer or device number if you use a builtin memory card reader/writer or you may **WIPE** your hdd

# Kernel 4.14.3
A deb package is made available.
Download and install deb package:

	dpkg -i linux-image-4.14.3-h2-4_1.0-1.deb

# Kernel 4.14.14
Up to date with 4.14.14 (stable)

	Linux nanopi-duo 4.14.14-h2-0 #1 SMP Tue Jan 23 18:32:27 -02 2018 armv7l armv7l armv7l GNU/Linux

# Bootlog

	[    0.000000] Booting Linux on physical CPU 0x0
	[    0.000000] Linux version 4.14.14-h2-0 (alex@svn) (gcc version 7.2.1 20171011 (Linaro GCC 7.2-2017.11)) #1 SMP Tue Jan 23 18:32:27 -02 2018
	[    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=10c5387d
	[    0.000000] CPU: div instructions available: patching division code
	[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
	[    0.000000] OF: fdt: Machine model: FriendlyArm NanoPi DUO
	[    0.000000] Memory policy: Data cache writealloc
	[    0.000000] cma: Reserved 16 MiB at 0x4f000000
	[    0.000000] On node 0 totalpages: 65536
	[    0.000000] free_area_init_node: node 0, pgdat c0a61480, node_mem_map cedf1000
	[    0.000000]   Normal zone: 512 pages used for memmap
	[    0.000000]   Normal zone: 0 pages reserved
	[    0.000000]   Normal zone: 65536 pages, LIFO batch:15
	[    0.000000] psci: probing for conduit method from DT.
	[    0.000000] psci: Using PSCI v0.1 Function IDs from DT
	[    0.000000] random: fast init done
	[    0.000000] percpu: Embedded 16 pages/cpu @ced9c000 s33932 r8192 d23412 u65536
	[    0.000000] pcpu-alloc: s33932 r8192 d23412 u65536 alloc=16*4096
	[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
	[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 65024
	[    0.000000] Kernel command line: console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rootfstype=ext4 rw rootwait fsck.repair=yes panic=10
	[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
	[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
	[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
	[    0.000000] Memory: 232188K/262144K available (6144K kernel code, 392K rwdata, 1600K rodata, 1024K init, 276K bss, 13572K reserved, 16384K cma-reserved, 0K highmem)
	[    0.000000] Virtual kernel memory layout:
	                   vector  : 0xffff0000 - 0xffff1000   (   4 kB)
	                   fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
	                   vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
	                   lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
	                   pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
	                   modules : 0xbf000000 - 0xbfe00000   (  14 MB)
	                     .text : 0xc0008000 - 0xc0700000   (7136 kB)
	                     .init : 0xc0900000 - 0xc0a00000   (1024 kB)
	                     .data : 0xc0a00000 - 0xc0a623c0   ( 393 kB)
	                      .bss : 0xc0a69ac0 - 0xc0aaeccc   ( 277 kB)
	[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
	[    0.000000] Hierarchical RCU implementation.
	[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
	[    0.000000] GIC: Using split EOI/Deactivate mode
	[    0.000000] clocksource: timer: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns
	[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
	[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
	[    0.000007] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
	[    0.000018] Switching to timer-based delay loop, resolution 41ns
	[    0.000207] Console: colour dummy device 80x30
	[    0.000243] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=240000)
	[    0.000257] pid_max: default: 32768 minimum: 301
	[    0.000390] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
	[    0.000402] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
	[    0.001004] CPU: Testing write buffer coherency: ok
	[    0.001389] CPU0: update cpu_capacity 1024
	[    0.001399] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
	[    0.001716] Setting up static identity map for 0x40100000 - 0x40100060
	[    0.001819] Hierarchical SRCU implementation.
	[    0.002310] smp: Bringing up secondary CPUs ...
	[    0.012931] CPU1: update cpu_capacity 1024
	[    0.012936] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
	[    0.023626] CPU2: update cpu_capacity 1024
	[    0.023631] CPU2: thread -1, cpu 2, socket 0, mpidr 80000002
	[    0.034287] CPU3: update cpu_capacity 1024
	[    0.034293] CPU3: thread -1, cpu 3, socket 0, mpidr 80000003
	[    0.034363] smp: Brought up 1 node, 4 CPUs
	[    0.034389] SMP: Total of 4 processors activated (192.00 BogoMIPS).
	[    0.034395] CPU: All CPU(s) started in HYP mode.
	[    0.034400] CPU: Virtualization extensions available.
	[    0.035102] devtmpfs: initialized
	[    0.040441] VFP support v0.3: implementor 41 architecture 2 part 30 variant 7 rev 5
	[    0.040675] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
	[    0.040696] futex hash table entries: 1024 (order: 4, 65536 bytes)
	[    0.041486] pinctrl core: initialized pinctrl subsystem
	[    0.042363] NET: Registered protocol family 16
	[    0.043706] DMA: preallocated 256 KiB pool for atomic coherent allocations
	[    0.044674] hw-breakpoint: found 5 (+1 reserved) breakpoint and 4 watchpoint registers.
	[    0.044685] hw-breakpoint: maximum watchpoint size is 8 bytes.
	[    0.057881] gpio-regulator gpio-regulator: could not find pctldev for node /soc/pinctrl@01f02c00/regulator_pins@0, deferring probe
	[    0.058188] SCSI subsystem initialized
	[    0.058350] libata version 3.00 loaded.
	[    0.058539] usbcore: registered new interface driver usbfs
	[    0.058583] usbcore: registered new interface driver hub
	[    0.058639] usbcore: registered new device driver usb
	[    0.058830] pps_core: LinuxPPS API ver. 1 registered
	[    0.058838] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
	[    0.058856] PTP clock support registered
	[    0.059005] Advanced Linux Sound Architecture Driver Initialized.
	[    0.059775] clocksource: Switched to clocksource arch_sys_counter
	[    0.059885] VFS: Disk quotas dquot_6.6.0
	[    0.059948] VFS: Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
	[    0.066621] NET: Registered protocol family 2
	[    0.067227] TCP established hash table entries: 2048 (order: 1, 8192 bytes)
	[    0.067263] TCP bind hash table entries: 2048 (order: 2, 16384 bytes)
	[    0.067298] TCP: Hash tables configured (established 2048 bind 2048)
	[    0.067406] UDP hash table entries: 256 (order: 1, 8192 bytes)
	[    0.067449] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
	[    0.067649] NET: Registered protocol family 1
	[    0.068052] RPC: Registered named UNIX socket transport module.
	[    0.068062] RPC: Registered udp transport module.
	[    0.068068] RPC: Registered tcp transport module.
	[    0.068073] RPC: Registered tcp NFSv4.1 backchannel transport module.
	[    0.068277] Unpacking initramfs...
	[    0.110539] Freeing initrd memory: 960K
	[    0.112194] workingset: timestamp_bits=30 max_order=16 bucket_order=0
	[    0.117462] NFS: Registering the id_resolver key type
	[    0.117513] Key type id_resolver registered
	[    0.117520] Key type id_legacy registered
	[    0.117535] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
	[    0.117542] Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
	[    0.118306] fuse init (API version 7.26)
	[    0.122068] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 249)
	[    0.122085] io scheduler noop registered
	[    0.122092] io scheduler deadline registered
	[    0.122229] io scheduler cfq registered (default)
	[    0.122238] io scheduler mq-deadline registered
	[    0.122244] io scheduler kyber registered
	[    0.122850] sun4i-usb-phy 1c19400.phy: Couldn't request ID GPIO
	[    0.126353] sun8i-h3-pinctrl 1c20800.pinctrl: initialized sunXi PIO driver
	[    0.127771] sun8i-h3-r-pinctrl 1f02c00.pinctrl: initialized sunXi PIO driver
	[    0.169437] Serial: 8250/16550 driver, 8 ports, IRQ sharing disabled
	[    0.171812] console [ttyS0] disabled
	[    0.192024] 1c28000.serial: ttyS0 at MMIO 0x1c28000 (irq = 46, base_baud = 1500000) is a U6_16550A
	[    0.856136] console [ttyS0] enabled
	[    0.863879] libphy: Fixed MDIO Bus: probed
	[    0.867983] CAN device driver interface
	[    0.872398] dwmac-sun8i 1c30000.ethernet: PTP uses main clock
	[    0.878173] dwmac-sun8i 1c30000.ethernet: No regulator found
	[    0.883910] dwmac-sun8i 1c30000.ethernet: Will use internal PHY
	[    0.890056] dwmac-sun8i 1c30000.ethernet: Chain mode enabled
	[    0.895712] dwmac-sun8i 1c30000.ethernet: No HW DMA feature register supported
	[    0.902943] dwmac-sun8i 1c30000.ethernet: Normal descriptors
	[    0.908595] dwmac-sun8i 1c30000.ethernet: RX Checksum Offload Engine supported
	[    0.915821] dwmac-sun8i 1c30000.ethernet: COE Type 2
	[    0.920791] dwmac-sun8i 1c30000.ethernet: TX Checksum insertion supported
	[    0.927665] libphy: stmmac: probed
	[    0.932562] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
	[    0.939084] ehci-platform: EHCI generic platform driver
	[    0.944523] ehci-platform 1c1a000.usb: EHCI Host Controller
	[    0.950131] ehci-platform 1c1a000.usb: new USB bus registered, assigned bus number 1
	[    0.958250] ehci-platform 1c1a000.usb: irq 29, io mem 0x01c1a000
	[    0.989788] ehci-platform 1c1a000.usb: USB 2.0 started, EHCI 1.00
	[    0.996578] hub 1-0:1.0: USB hub found
	[    1.000386] hub 1-0:1.0: 1 port detected
	[    1.004940] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
	[    1.011162] ohci-platform: OHCI generic platform driver
	[    1.016554] ohci-platform 1c1a400.usb: Generic Platform OHCI controller
	[    1.023199] ohci-platform 1c1a400.usb: new USB bus registered, assigned bus number 2
	[    1.031109] ohci-platform 1c1a400.usb: irq 30, io mem 0x01c1a400
	[    1.104391] hub 2-0:1.0: USB hub found
	[    1.108170] hub 2-0:1.0: 1 port detected
	[    1.115097] usbcore: registered new interface driver usb-storage
	[    1.121608] mousedev: PS/2 mouse device common for all mice
	[    1.127570] ads7846 spi1.1: spi1.1 supply vcc not found, using dummy regulator
	[    1.135187] ads7846 spi1.1: touchscreen, irq 93
	[    1.140234] input: ADS7846 Touchscreen as /devices/platform/soc/1c69000.spi/spi_master/spi1/spi1.1/input/input0
	[    1.151123] sun6i-rtc 1f00000.rtc: rtc core: registered rtc-sun6i as rtc0
	[    1.157905] sun6i-rtc 1f00000.rtc: RTC enabled
	[    1.162526] i2c /dev entries driver
	[    1.167162] thermal thermal_zone0: failed to read out thermal zone (-16)
	[    1.174334] sunxi-wdt 1c20ca0.watchdog: Watchdog enabled (timeout=16 sec, nowayout=0)
	[    1.183640] sunxi-mmc 1c0f000.mmc: Got CD GPIO
	[    1.239795] sunxi-mmc 1c0f000.mmc: base:0xd083d000 irq:26
	[    1.246940] usbcore: registered new interface driver usbhid
	[    1.252564] usbhid: USB HID core driver
	[    1.256480] fbtft_of_value: buswidth = 8
	[    1.260424] fbtft_of_value: debug = 0
	[    1.264072] fbtft_of_value: rotate = 90
	[    1.267902] fbtft_of_value: fps = 33
	[    1.420435] Console: switching to colour frame buffer device 40x30
	[    1.427241] graphics fb0: fb_st7789v frame buffer, 320x240, 150 KiB video memory, 4 KiB buffer memory, fps=33, spi1.0 at 50 MHz
	[    1.440246] sun4i-codec 1c22c00.codec: ASoC: /soc/codec-analog@01f015c0 not registered
	[    1.448163] sun4i-codec 1c22c00.codec: Failed to register our card
	[    1.450662] mmc0: host does not support reading read-only switch, assuming write-enable
	[    1.453491] mmc0: new high speed SDHC card at address aaaa
	[    1.453924] mmcblk0: mmc0:aaaa SL16G 14.8 GiB 
	[    1.456170]  mmcblk0: p1 p2
	[    1.477006] Initializing XFRM netlink socket
	[    1.481324] NET: Registered protocol family 17
	[    1.485784] can: controller area network core (rev 20170425 abi 9)
	[    1.492054] NET: Registered protocol family 29
	[    1.496493] can: raw protocol (rev 20170425)
	[    1.500772] can: broadcast manager protocol (rev 20170425 t)
	[    1.506429] can: netlink gateway (rev 20170425) max_hops=1
	[    1.512150] Key type dns_resolver registered
	[    1.516583] Registering SWP/SWPB emulation handler
	[    1.528800] ehci-platform 1c1b000.usb: EHCI Host Controller
	[    1.534444] ehci-platform 1c1b000.usb: new USB bus registered, assigned bus number 3
	[    1.544298] ehci-platform 1c1b000.usb: irq 31, io mem 0x01c1b000
	[    1.579775] ehci-platform 1c1b000.usb: USB 2.0 started, EHCI 1.00
	[    1.586660] hub 3-0:1.0: USB hub found
	[    1.590471] hub 3-0:1.0: 1 port detected
	[    1.595122] ehci-platform 1c1c000.usb: EHCI Host Controller
	[    1.600744] ehci-platform 1c1c000.usb: new USB bus registered, assigned bus number 4
	[    1.608712] ehci-platform 1c1c000.usb: irq 33, io mem 0x01c1c000
	[    1.639776] ehci-platform 1c1c000.usb: USB 2.0 started, EHCI 1.00
	[    1.646480] hub 4-0:1.0: USB hub found
	[    1.650275] hub 4-0:1.0: 1 port detected
	[    1.654817] ehci-platform 1c1d000.usb: EHCI Host Controller
	[    1.660431] ehci-platform 1c1d000.usb: new USB bus registered, assigned bus number 5
	[    1.668417] ehci-platform 1c1d000.usb: irq 35, io mem 0x01c1d000
	[    1.699778] ehci-platform 1c1d000.usb: USB 2.0 started, EHCI 1.00
	[    1.706502] hub 5-0:1.0: USB hub found
	[    1.710313] hub 5-0:1.0: 1 port detected
	[    1.714859] ohci-platform 1c1b400.usb: Generic Platform OHCI controller
	[    1.721516] ohci-platform 1c1b400.usb: new USB bus registered, assigned bus number 6
	[    1.729535] ohci-platform 1c1b400.usb: irq 32, io mem 0x01c1b400
	[    1.804362] hub 6-0:1.0: USB hub found
	[    1.808140] hub 6-0:1.0: 1 port detected
	[    1.812730] ohci-platform 1c1c400.usb: Generic Platform OHCI controller
	[    1.819357] ohci-platform 1c1c400.usb: new USB bus registered, assigned bus number 7
	[    1.827382] ohci-platform 1c1c400.usb: irq 34, io mem 0x01c1c400
	[    1.904367] hub 7-0:1.0: USB hub found
	[    1.908144] hub 7-0:1.0: 1 port detected
	[    1.912752] ohci-platform 1c1d400.usb: Generic Platform OHCI controller
	[    1.919386] ohci-platform 1c1d400.usb: new USB bus registered, assigned bus number 8
	[    1.927387] ohci-platform 1c1d400.usb: irq 36, io mem 0x01c1d400
	[    2.004372] hub 8-0:1.0: USB hub found
	[    2.008148] hub 8-0:1.0: 1 port detected
	[    2.012811] usb_phy_generic usb_phy_generic.0.auto: usb_phy_generic.0.auto supply vcc not found, using dummy regulator
	[    2.023900] musb-hdrc musb-hdrc.1.auto: MUSB HDRC host driver
	[    2.029647] musb-hdrc musb-hdrc.1.auto: new USB bus registered, assigned bus number 9
	[    2.037528] usb 4-1: new high-speed USB device number 2 using ehci-platform
	[    2.045279] hub 9-0:1.0: USB hub found
	[    2.049064] hub 9-0:1.0: 1 port detected
	[    2.056029] sunxi-mmc 1c10000.mmc: allocated mmc-pwrseq
	[    2.079827] usb 5-1: new high-speed USB device number 2 using ehci-platform
	[    2.245996] usb-storage 4-1:1.0: USB Mass Storage device detected
	[    2.259201] usb-storage 4-1:1.0: Quirks match for vid 152d pid 0578: 1000000
	[    2.266348] scsi host0: usb-storage 4-1:1.0
	[    2.288322] hub 5-1:1.0: USB hub found
	[    2.297524] hub 5-1:1.0: 4 ports detected
	[    2.430057] sunxi-mmc 1c10000.mmc: base:0xd088b000 irq:27
	[    2.447447] sun4i-codec 1c22c00.codec: Codec <-> 1c22c00.codec mapping ok
	[    2.474981] sun6i-rtc 1f00000.rtc: setting system clock to 1970-01-01 00:00:08 UTC (8)
	[    2.483203] vcc3v0: disabling
	[    2.486174] vcc5v0: disabling
	[    2.489139] usb0-vbus: disabling
	[    2.492392] ALSA device list:
	[    2.495355]   #0: H3 Audio Codec
	[    2.500307] Freeing unused kernel memory: 1024K
	[    2.512694] mmc1: new high speed SDIO card at address 0001
	[    2.621821] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature incompatibilities
	[    2.635285] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to feature incompatibilities
	[    2.649537] EXT4-fs (mmcblk0p2): warning: mounting unchecked fs, running e2fsck is recommended
	[    2.662965] EXT4-fs (mmcblk0p2): mounted filesystem without journal. Opts: (null)
	[    3.152096] systemd[1]: System time before build time, advancing clock.
	[    3.283221] scsi 0:0:0:0: Direct-Access     JMicron  Tech             0227 PQ: 0 ANSI: 6
	[    3.297316] NET: Registered protocol family 10
	[    3.342541] Segment Routing with IPv6
	[    3.380606] systemd[1]: systemd 229 running in system mode. (+PAM +AUDIT +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ -LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD -IDN)
	[    3.399725] systemd[1]: Detected architecture arm.
	[    3.445403] systemd[1]: Set hostname to <nanopi-duo>.
	[    3.857242] systemd[1]: Reached target Swap.
	[    3.892434] systemd[1]: Listening on fsck to fsckd communication Socket.
	[    3.932086] systemd[1]: Reached target Encrypted Volumes.
	[    3.972578] systemd[1]: Reached target Remote File Systems (Pre).
	[    4.011942] systemd[1]: Reached target Remote File Systems.
	[    4.043016] systemd[1]: Listening on udev Control Socket.
	[    4.056449] systemd[1]: Started Forward Password Requests to Wall Directory Watch.
	[    4.406277] xradio_wlan mmc1:0001:1: no mac address provided, using random
	[    4.549296] random: crng init done
	[    4.619937] xradio_wlan mmc1:0001:1: missed interrupt
	[    4.625260] xradio_wlan mmc1:0001:1:    Input buffers: 30 x 1632 bytes
	                  Hardware: 7.9
	                  WSM firmware ver: 8, build: 5207, api: 1060, cap: 0x0003
	[    4.641278] xradio_wlan mmc1:0001:1: Firmware Label:XR_C01.08.52.07 Nov 10 2016 13:22:16
	[    4.650611] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
	[    4.665121] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
	[    4.692926] g_serial gadget: Gadget Serial v2.4
	[    4.697483] g_serial gadget: g_serial ready
	[    5.555206] systemd-journald[141]: Received request to flush runtime journal from PID 1
	[    6.166748] lirc_dev: IR Remote Control driver registered, major 247
	[    6.190635] IR LIRC bridge handler initialized
	[    6.191551] Registered IR keymap rc-empty
	[    6.191759] rc rc0: sunxi-ir as /devices/platform/soc/1f02000.ir/rc/rc0
	[    6.191948] input: sunxi-ir as /devices/platform/soc/1f02000.ir/rc/rc0/input1
	[    6.195307] rc rc0: lirc_dev: driver ir-lirc-codec (sunxi-ir) registered at minor = 0
	[    6.195476] sunxi-ir 1f02000.ir: initialized sunXi IR driver
	[    7.138344] EXT4-fs (mmcblk0p1): mounted filesystem with ordered data mode. Opts: (null)
	[    7.466767] Generic PHY stmmac-0:01: attached PHY driver [Generic PHY] (mii_bus:phy_addr=stmmac-0:01, irq=POLL)
	[    7.469849] dwmac-sun8i 1c30000.ethernet eth0: No MAC Management Counters available
	[    7.469866] dwmac-sun8i 1c30000.ethernet eth0: PTP not supported by HW
	[    7.470181] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
	[    7.473423] ieee80211 phy0: Interface ID:0 of type:2 added
	[    7.473955] ieee80211 phy0: vif 0, configuring tx
	[    7.474397] ieee80211 phy0: vif 0, configuring tx
	[    7.474703] ieee80211 phy0: vif 0, configuring tx
	[    7.474973] ieee80211 phy0: vif 0, configuring tx
	[    7.475232] ieee80211 phy0: ignore IEEE80211_CONF_CHANGE_MONITOR (1)IEEE80211_CONF_CHANGE_IDLE (1)
	[    7.475391] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
	[   10.563318] dwmac-sun8i 1c30000.ethernet eth0: Link is Up - 100Mbps/Full - flow control rx/tx
	[   10.563479] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
	[   15.459896] usb 4-1: reset high-speed USB device number 2 using ehci-platform
	[   25.870093] usb 4-1: reset high-speed USB device number 2 using ehci-platform
	[   36.269846] usb 4-1: reset high-speed USB device number 2 using ehci-platform
	[   46.669891] usb 4-1: reset high-speed USB device number 2 using ehci-platform
	[   57.070095] usb 4-1: reset high-speed USB device number 2 using ehci-platform
	[   67.480099] usb 4-1: reset high-speed USB device number 2 using ehci-platform
	[   77.848057] usb 4-1: reset high-speed USB device number 2 using ehci-platform
	[   88.256237] usb 4-1: reset high-speed USB device number 2 using ehci-platform

# Memory footprint

	              total        used        free      shared  buff/cache   available
	Mem:            244          10         194           4          39         213
	Swap:             0           0           0


# History Log:
* initial commit
* added kernel 4.14 files (boot, Image and modules)
* added bootloader, format_sd.sh and burn_sd.sh
* added linux-kernel-4.14.3 deb package

# To be continue:
* upload kernel 4.14.3 (done)
* updated to kernel 4.14.14 (done)
* initrd fix (initramfs broken padding)
* wrong defconfig fix
* removed FBTFT and Touch for the 2.8 TFT (need pin revision)
* build with gcc 7.2.1
* finish README instructions
