Copyright (c) 1992-2015 The FreeBSD Project.
Copyright (c) 1979, 1980, 1983, 1986, 1988, 1989, 1991, 1992, 1993, 1994
	The Regents of the University of California. All rights reserved.
FreeBSD is a registered trademark of The FreeBSD Foundation.
FreeBSD 10.2-RELEASE #0 r286666: Wed Aug 12 15:26:37 UTC 2015
    root@releng1.nyi.freebsd.org:/usr/obj/usr/src/sys/GENERIC amd64
FreeBSD clang version 3.4.1 (tags/RELEASE_34/dot1-final 208032) 20140512
CPU: Intel(R) Xeon(R) CPU E5-2650L v3 @ 1.80GHz (1798.01-MHz K8-class CPU)
  Origin="GenuineIntel"  Id=0x306f2  Family=0x6  Model=0x3f  Stepping=2
  Features=0xf83fbff<FPU,VME,DE,PSE,TSC,MSR,PAE,MCE,CX8,APIC,SEP,MTRR,PGE,MCA,CMOV,PAT,PSE36,MMX,FXSR,SSE,SSE2,SS>
  Features2=0xfffa3223<SSE3,PCLMULQDQ,VMX,SSSE3,FMA,CX16,PCID,SSE4.1,SSE4.2,x2APIC,MOVBE,POPCNT,TSCDLT,AESNI,XSAVE,OSXSAVE,AVX,F16C,RDRAND,HV>
  AMD Features=0x2c100800<SYSCALL,NX,Page1GB,RDTSCP,LM>
  AMD Features2=0x21<LAHF,ABM>
  Structured Extended Features=0x72a<TSCADJ,BMI1,AVX2,BMI2,ERMS,INVPCID>
  XSAVE Features=0x1<XSAVEOPT>
  VT-x: (disabled in BIOS) PAT,HLT,PAUSE,EPT,UG
Hypervisor: Origin = "KVMKVMKVM"
real memory  = 2147483648 (2048 MB)
avail memory = 2050473984 (1955 MB)
Event timer "LAPIC" quality 600
ACPI APIC Table: <BOCHS  BXPCAPIC>
FreeBSD/SMP: Multiprocessor System Detected: 2 CPUs
FreeBSD/SMP: 2 package(s) x 1 core(s)
 cpu0 (BSP): APIC ID:  0
 cpu1 (AP): APIC ID:  1
ioapic0 <Version 1.1> irqs 0-23 on motherboard
random: <Software, Yarrow> initialized
kbd1 at kbdmux0
acpi0: <BOCHS BXPCRSDT> on motherboard
acpi0: Power Button (fixed)
cpu0: <ACPI CPU> on acpi0
cpu1: <ACPI CPU> on acpi0
atrtc0: <AT realtime clock> port 0x70-0x71,0x72-0x77 irq 8 on acpi0
Event timer "RTC" frequency 32768 Hz quality 0
hpet0: <High Precision Event Timer> iomem 0xfed00000-0xfed003ff on acpi0
Timecounter "HPET" frequency 100000000 Hz quality 950
Timecounter "ACPI-fast" frequency 3579545 Hz quality 900
acpi_timer0: <24-bit timer at 3.579545MHz> port 0xb008-0xb00b on acpi0
pcib0: <ACPI Host-PCI bridge> port 0xcf8-0xcff on acpi0
pci0: <ACPI PCI bus> on pcib0
isab0: <PCI-ISA bridge> at device 1.0 on pci0
isa0: <ISA bus> on isab0
atapci0: <Intel PIIX3 WDMA2 controller> port 0x1f0-0x1f7,0x3f6,0x170-0x177,0x376,0xc100-0xc10f at device 1.1 on pci0
ata0: <ATA channel> at channel 0 on atapci0
ata1: <ATA channel> at channel 1 on atapci0
uhci0: <Intel 82371SB (PIIX3) USB controller> port 0xc080-0xc09f irq 11 at device 1.2 on pci0
usbus0 on uhci0
pci0: <bridge> at device 1.3 (no driver attached)
vgapci0: <VGA-compatible display> mem 0xfc000000-0xfdffffff,0xfebd0000-0xfebd0fff at device 2.0 on pci0
vgapci0: Boot video device
virtio_pci0: <VirtIO PCI Network adapter> port 0xc0a0-0xc0bf mem 0xfebd1000-0xfebd1fff irq 11 at device 3.0 on pci0
vtnet0: <VirtIO Networking Adapter> on virtio_pci0
vtnet0: Ethernet address: 04:01:d9:20:0a:01
virtio_pci1: <VirtIO PCI Network adapter> port 0xc0c0-0xc0df mem 0xfebd2000-0xfebd2fff irq 11 at device 4.0 on pci0
vtnet1: <VirtIO Networking Adapter> on virtio_pci1
vtnet1: Ethernet address: 04:01:d9:20:0a:02
virtio_pci2: <VirtIO PCI SCSI adapter> port 0xc000-0xc03f mem 0xfebd3000-0xfebd3fff irq 10 at device 5.0 on pci0
vtscsi0: <VirtIO SCSI Adapter> on virtio_pci2
virtio_pci3: <VirtIO PCI Block adapter> port 0xc040-0xc07f mem 0xfebd4000-0xfebd4fff irq 10 at device 6.0 on pci0
vtblk0: <VirtIO Block Adapter> on virtio_pci3
vtblk0: 40960MB (83886080 512 byte sectors)
virtio_pci4: <VirtIO PCI Balloon adapter> port 0xc0e0-0xc0ff irq 11 at device 7.0 on pci0
vtballoon0: <VirtIO Balloon Adapter> on virtio_pci4
atkbdc0: <Keyboard controller (i8042)> port 0x60,0x64 irq 1 on acpi0
atkbd0: <AT Keyboard> irq 1 on atkbdc0
kbd0 at atkbd0
atkbd0: [GIANT-LOCKED]
psm0: <PS/2 Mouse> irq 12 on atkbdc0
psm0: [GIANT-LOCKED]
psm0: model IntelliMouse Explorer, device ID 4
fdc0: <floppy drive controller> port 0x3f2-0x3f5,0x3f7 irq 6 drq 2 on acpi0
fdc0: does not respond
device_attach: fdc0 attach returned 6
uart0: <16550 or compatible> port 0x3f8-0x3ff irq 4 flags 0x10 on acpi0
uart0: console (9600,n,8,1)
orm0: <ISA Option ROMs> at iomem 0xc0000-0xc8fff,0xeb800-0xeffff on isa0
sc0: <System console> at flags 0x100 on isa0
sc0: VGA <16 virtual consoles, flags=0x300>
vga0: <Generic ISA VGA> at port 0x3c0-0x3df iomem 0xa0000-0xbffff on isa0
attimer0: <AT timer> at port 0x40 on isa0
Timecounter "i8254" frequency 1193182 Hz quality 0
Event timer "i8254" frequency 1193182 Hz quality 100
fdc0: No FDOUT register!
ppc0: cannot reserve I/O port range
Timecounters tick every 1.000 msec
usbus0: 12Mbps Full Speed USB v1.0
ugen0.1: <Intel> at usbus0
uhub0: <Intel UHCI root HUB, class 9/0, rev 1.00/1.00, addr 1> on usbus0
GEOM: vtbd0: the secondary GPT header is not in the last LBA.
random: unblocking device.
SMP: AP CPU #1 Launched!
Root mount waiting for: usbus0
uhub0: 2 ports with 2 removable, self powered
Trying to mount root from ufs:/dev/gpt/rootfs [rw]...
