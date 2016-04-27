Copyright (c) 1992-2015 The FreeBSD Project.
Copyright (c) 1979, 1980, 1983, 1986, 1988, 1989, 1991, 1992, 1993, 1994
	The Regents of the University of California. All rights reserved.
FreeBSD is a registered trademark of The FreeBSD Foundation.
FreeBSD 10.2-RELEASE #0 r286666: Wed Aug 12 15:26:37 UTC 2015
    root@releng1.nyi.freebsd.org:/usr/obj/usr/src/sys/GENERIC amd64
FreeBSD clang version 3.4.1 (tags/RELEASE_34/dot1-final 208032) 20140512
CPU: Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz (2194.99-MHz K8-class CPU)
  Origin="GenuineIntel"  Id=0x40661  Family=0x6  Model=0x46  Stepping=1
  Features=0xbfe3fbff<FPU,VME,DE,PSE,TSC,MSR,PAE,MCE,CX8,APIC,SEP,MTRR,PGE,MCA,CMOV,PAT,PSE36,DTS,ACPI,MMX,FXSR,SSE,SSE2,SS,HTT,TM,PBE>
  Features2=0xf6c0fa17<SSE3,PCLMULQDQ,DTES64,DS_CPL,SSSE3,<b11>,FMA,CX16,xTPR,PDCM,MOVBE,POPCNT,AESNI,XSAVE,AVX,F16C,RDRAND,HV>
  AMD Features=0x20100800<SYSCALL,NX,LM>
  AMD Features2=0x1<LAHF>
  Structured Extended Features=0x272a<TSCADJ,BMI1,AVX2,BMI2,ERMS,INVPCID,NFPUSG>
  XSAVE Features=0x1<XSAVEOPT>
real memory  = 4294967296 (4096 MB)
avail memory = 4103499776 (3913 MB)
Event timer "LAPIC" quality 400
ACPI APIC Table: <Veertu BXPCAPIC>
FreeBSD/SMP: Multiprocessor System Detected: 2 CPUs
FreeBSD/SMP: 1 package(s) x 1 core(s) x 2 HTT threads
 cpu0 (BSP): APIC ID:  0
 cpu1 (AP/HT): APIC ID:  1
ioapic0 <Version 1.1> irqs 0-23 on motherboard
random: <Software, Yarrow> initialized
kbd1 at kbdmux0
acpi0: <Veertu BXPCRSDT> on motherboard
acpi0: Power Button (fixed)
cpu0: <ACPI CPU> on acpi0
cpu1: <ACPI CPU> on acpi0
atrtc0: <AT realtime clock> port 0x70-0x71,0x72-0x77 irq 8 on acpi0
Event timer "RTC" frequency 32768 Hz quality 0
Timecounter "ACPI-fast" frequency 3579545 Hz quality 900
acpi_timer0: <24-bit timer at 3.579545MHz> port 0xb008-0xb00b on acpi0
pcib0: <ACPI Host-PCI bridge> port 0xcf8-0xcff on acpi0
pci0: <ACPI PCI bus> on pcib0
isab0: <PCI-ISA bridge> at device 1.0 on pci0
isa0: <ISA bus> on isab0
atapci0: <Intel PIIX3 WDMA2 controller> port 0x1f0-0x1f7,0x3f6,0x170-0x177,0x376,0xc060-0xc06f at device 1.1 on pci0
ata0: <ATA channel> at channel 0 on atapci0
ata1: <ATA channel> at channel 1 on atapci0
uhci0: <Intel 82371SB (PIIX3) USB controller> port 0xc040-0xc05f irq 11 at device 1.2 on pci0
usbus0: controller did not stop
usbus0 on uhci0
pci0: <bridge> at device 1.3 (no driver attached)
vgapci0: <VGA-compatible display> port 0xc070-0xc07f mem 0xf8000000-0xfbffffff,0xfc000000-0xfc00ffff at device 2.0 on pci0
vgapci0: Boot video device
em0: <Intel(R) PRO/1000 Legacy Network Connection 1.0.6> port 0xc000-0xc03f mem 0xfebc0000-0xfebdffff irq 11 at device 3.0 on pci0
em0: Ethernet address: 76:6d:78:0b:46:d3
ehci0: <Intel 82801DB/L/M (ICH4) USB 2.0 controller> mem 0xfebf0000-0xfebf0fff irq 11 at device 4.0 on pci0
usbus1: EHCI version 1.0
usbus1 on ehci0
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
orm0: <ISA Option ROM> at iomem 0xee000-0xeffff on isa0
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
usbus1: 480Mbps High Speed USB v2.0
ugen0.1: <Intel> at usbus0
uhub0: <Intel UHCI root HUB, class 9/0, rev 1.00/1.00, addr 1> on usbus0
ugen1.1: <Intel> at usbus1
uhub1: <Intel EHCI root HUB, class 9/0, rev 2.00/1.00, addr 1> on usbus1
ada0 at ata0 bus 0 scbus0 target 0 lun 0
cd0 at ata0 bus 0 scbus0 target 1 lun 0
cd0: <Veertu DVD-ROM 1.0> Removable CD-ROM SCSI device
cd0: Serial Number QM00002
cd0: 16.700MB/s transfers (WDMA2, ATAPI 12bytes, PIO 65534bytes)
cd0: cd present [118134 x 2048 byte records]
ada0: <HARDDISK 1.0> ATA-7 device
random: unblocking device.
ada0: Serial Number QM00001
ada0: 16.700MB/s transfers (WDMA2, PIO 8192bytes)
ada0: 20480MB (41943040 512 byte sectors: 16H 63S/T 16383C)
ada0: Previously was known as ad0
uhub0: 2 ports with 2 removable, self powered
SMP: AP CPU #1 Launched!
Root mount waiting for: usbus1 usbus0
ugen0.2: <Veertu> at usbus0
Root mount waiting for: usbus1
uhub1: 6 ports with 6 removable, self powered
Trying to mount root from ufs:/dev/ada0p2 [rw]...
uaudio0: <Audio Device> on usbus0
uaudio0: Play: 48000 Hz, 2 ch, 16-bit S-LE PCM format, 2x8ms buffer.
uaudio0: Record: 48000 Hz, 1 ch, 16-bit S-LE PCM format, 2x8ms buffer.
uaudio0: No MIDI sequencer.
pcm0: <USB audio> on uaudio0
uaudio0: No HID volume keys found.
Waiting (max 60 seconds) for system process `vnlru' to stop...done
Waiting (max 60 seconds) for system process `bufdaemon' to stop...done
Waiting (max 60 seconds) for system process `syncer' to stop...
Syncing disks, vnodes remaining...1 0 done
All buffers synced.
Uptime: 13m21s
pcm0: detached
usbus0: controller did not stop
Rebooting...
cpu_reset: Stopping other CPUs
Copyright (c) 1992-2015 The FreeBSD Project.
Copyright (c) 1979, 1980, 1983, 1986, 1988, 1989, 1991, 1992, 1993, 1994
	The Regents of the University of California. All rights reserved.
FreeBSD is a registered trademark of The FreeBSD Foundation.
FreeBSD 10.2-RELEASE #0 r286666: Wed Aug 12 15:26:37 UTC 2015
    root@releng1.nyi.freebsd.org:/usr/obj/usr/src/sys/GENERIC amd64
FreeBSD clang version 3.4.1 (tags/RELEASE_34/dot1-final 208032) 20140512
CPU: Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz (2194.98-MHz K8-class CPU)
  Origin="GenuineIntel"  Id=0x40661  Family=0x6  Model=0x46  Stepping=1
  Features=0xbfe3fbff<FPU,VME,DE,PSE,TSC,MSR,PAE,MCE,CX8,APIC,SEP,MTRR,PGE,MCA,CMOV,PAT,PSE36,DTS,ACPI,MMX,FXSR,SSE,SSE2,SS,HTT,TM,PBE>
  Features2=0xf6c0fa17<SSE3,PCLMULQDQ,DTES64,DS_CPL,SSSE3,<b11>,FMA,CX16,xTPR,PDCM,MOVBE,POPCNT,AESNI,XSAVE,AVX,F16C,RDRAND,HV>
  AMD Features=0x20100800<SYSCALL,NX,LM>
  AMD Features2=0x1<LAHF>
  Structured Extended Features=0x272a<TSCADJ,BMI1,AVX2,BMI2,ERMS,INVPCID,NFPUSG>
  XSAVE Features=0x1<XSAVEOPT>
real memory  = 4294967296 (4096 MB)
avail memory = 4103499776 (3913 MB)
Event timer "LAPIC" quality 400
ACPI APIC Table: <Veertu BXPCAPIC>
FreeBSD/SMP: Multiprocessor System Detected: 2 CPUs
FreeBSD/SMP: 1 package(s) x 1 core(s) x 2 HTT threads
 cpu0 (BSP): APIC ID:  0
 cpu1 (AP/HT): APIC ID:  1
ioapic0 <Version 1.1> irqs 0-23 on motherboard
random: <Software, Yarrow> initialized
kbd1 at kbdmux0
acpi0: <Veertu BXPCRSDT> on motherboard
acpi0: Power Button (fixed)
cpu0: <ACPI CPU> on acpi0
cpu1: <ACPI CPU> on acpi0
atrtc0: <AT realtime clock> port 0x70-0x71,0x72-0x77 irq 8 on acpi0
Event timer "RTC" frequency 32768 Hz quality 0
Timecounter "ACPI-fast" frequency 3579545 Hz quality 900
acpi_timer0: <24-bit timer at 3.579545MHz> port 0xb008-0xb00b on acpi0
pcib0: <ACPI Host-PCI bridge> port 0xcf8-0xcff on acpi0
pci0: <ACPI PCI bus> on pcib0
isab0: <PCI-ISA bridge> at device 1.0 on pci0
isa0: <ISA bus> on isab0
atapci0: <Intel PIIX3 WDMA2 controller> port 0x1f0-0x1f7,0x3f6,0x170-0x177,0x376,0xc060-0xc06f at device 1.1 on pci0
ata0: <ATA channel> at channel 0 on atapci0
ata1: <ATA channel> at channel 1 on atapci0
uhci0: <Intel 82371SB (PIIX3) USB controller> port 0xc040-0xc05f irq 11 at device 1.2 on pci0
usbus0: controller did not stop
usbus0 on uhci0
pci0: <bridge> at device 1.3 (no driver attached)
vgapci0: <VGA-compatible display> port 0xc070-0xc07f mem 0xf8000000-0xfbffffff,0xfc000000-0xfc00ffff at device 2.0 on pci0
vgapci0: Boot video device
em0: <Intel(R) PRO/1000 Legacy Network Connection 1.0.6> port 0xc000-0xc03f mem 0xfebc0000-0xfebdffff irq 11 at device 3.0 on pci0
em0: Ethernet address: 76:6d:78:0b:46:d3
ehci0: <Intel 82801DB/L/M (ICH4) USB 2.0 controller> mem 0xfebf0000-0xfebf0fff irq 11 at device 4.0 on pci0
usbus1: EHCI version 1.0
usbus1 on ehci0
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
orm0: <ISA Option ROM> at iomem 0xee000-0xeffff on isa0
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
usbus1: 480Mbps High Speed USB v2.0
ugen0.1: <Intel> at usbus0
uhub0: <Intel UHCI root HUB, class 9/0, rev 1.00/1.00, addr 1> on usbus0
ugen1.1: <Intel> at usbus1
uhub1: <Intel EHCI root HUB, class 9/0, rev 2.00/1.00, addr 1> on usbus1
random: unblocking device.
ada0 at ata0 bus 0 scbus0 target 0 lun 0
cd0 at ata0 bus 0 scbus0 target 1 lun 0
cd0: <Veertu DVD-ROM 1.0> Removable CD-ROM SCSI device
cd0: Serial Number QM00002
cd0: 16.700MB/s transfers (WDMA2, ATAPI 12bytes, PIO 65534bytes)
cd0: cd present [118134 x 2048 byte records]
ada0: <HARDDISK 1.0> ATA-7 device
ada0: Serial Number QM00001
ada0: 16.700MB/s transfers (WDMA2, PIO 8192bytes)
ada0: 20480MB (41943040 512 byte sectors: 16H 63S/T 16383C)
ada0: Previously was known as ad0
uhub0: 2 ports with 2 removable, self powered
SMP: AP CPU #1 Launched!
Root mount waiting for: usbus1 usbus0
ugen0.2: <Veertu> at usbus0
Root mount waiting for: usbus1
uhub1: 6 ports with 6 removable, self powered
Trying to mount root from ufs:/dev/ada0p2 [rw]...
uaudio0: <Audio Device> on usbus0
uaudio0: Play: 48000 Hz, 2 ch, 16-bit S-LE PCM format, 2x8ms buffer.
uaudio0: Record: 48000 Hz, 1 ch, 16-bit S-LE PCM format, 2x8ms buffer.
uaudio0: No MIDI sequencer.
pcm0: <USB audio> on uaudio0
uaudio0: No HID volume keys found.
