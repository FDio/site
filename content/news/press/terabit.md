+++
title = "FD.io Doubles Packet Throughput Performance to Terabit Levels"
subtite = "FD.io Delivers unprecedented performance levels with new Intel® Xeon® Scalable Processor"
author = "Jeska Duman"

location = "San Francisco"
date = "2017-07-11"

+++

FD.io (“Fido”), relentlessly focused on data IO speed and efficiency supporting the creation of high performance, flexible, and scalable software defined infrastructures, today announced significant performance gains reaching terabit levels at multimillion route scale. Architectural improvement increases in latest Intel® Xeon® Scalable processor family – such as increased PCIe bandwidth – allow FD.io to double its performance at scale without modification to the software. Building on its recent 17.04 release, FD.io is the only vSwitch for which performance scaling is IO bound rather than CPU bound.

FD.io offers the software defined infrastructure developer community a landing site with multiple projects fostering innovations in software-based packet processing towards the creation of high-throughput, low-latency, and resource-efficient IO services suitable to many architectures (x86, ARM, and PowerPC) and deployment environments (bare metal, VM, container). 

“FD.io has long been able to deliver complex routing/switching at multi-million fib entry scale at the limit of the rate the PCI bus can deliver packets to the CPU,” said David Ward, FD.io Board Chair and SVP, CTO and Chief Architect of Engineering, Cisco. “The increase in PCI bandwidth per socket in Intel’s latest product offering has doubled our performance to 1 Tbps with our existing unmodified 17.04 release, once again pegging the limit of what the PCI bus can handle. We look forward to being able to make similar gains as PCI bandwidth per socket continues to grow.”

Vector Packet Processing (VPP), a key project component of FD.io, designed with server-class optimization such as vector instruction, cache optimizations, and packet pre-fetching achieves world-class performance when connected to IO devices via the DPDK plug-in. The VPP framework gives developers the potential to easily build any number of packet processing solutions by varying the underlying forwarding graphs while also easily accommodating new graph nodes to be “plugged in.”

Recent testing of FD.io release 17.04 shows impressive gains in performance on Intel’s newest platform when switching and routing layer 2/3 traffic. With the prior generation Intel® Xeon® Processor E7-8890v3, FD.io testing showed aggregate forwarding rate of 480 Gbps (200 Mpps) for 4-Socket machine (using 4 of E7-8890v3 CPU configuration); however, the same FD.io tests run on two 2-Socket blades (e.g. a modern 2RU server) with the new Intel® Xeon® Platinum 8168 CPUs (using four of 8168 CPUs in two by two-socket configuration), within the same power budget, show increase of forwarding rate to 948 Gbps (400 Mpps) benefiting from the PCIe bandwidth increase of the new CPUs, and the overall decrease in cycles-per-packet due to CPU micro-architecture improvements.

For customers already building their solutions using FD.io release 17.04, these types of performance gains are realized without further development effort as the software is optimized to take full advantage the additional PCIe bandwidth and other CPU capabilities as the hardware becomes available.

“FD.io-driven innovations in software-based packet processing continue to expand on what began with DPDK more than six years ago and continues today, accelerating NFV and SDN solutions across communications service providers, cloud service providers, and enterprises,” said George Zhao, DPDK board member and director, Open Source Software and Ecosystem, Huawei. “We are delighted to see traffic switching reaching terabit throughput levels on standard high volume server platforms.”

FD.io recently issued its fourth release, FD.io 17.04, which contains a set of new features to enable commercial-ready solutions for software-defined infrastructures, and will be issuing its next release, FD.io 17.07, this fall. FD.io has made significant strides since its launch in February 2016; it now leverages contributions from more than 173 contributors from over 45 different organizations including network operators, service  providers, chip vendors, and integrators who are collaborating to enhance and innovate around the Vector Packet Processing (VPP) technology.

About FD.io

The Fast Data Project (FD.io) “Fido” is a collaborative open source project that aims to establish a high-performance IO services framework for dynamic computing environments. The FD.io Community includes Network IO, Packet Processing, and Dataplane Management Agents fostering innovations in software based packet processing towards the creation of high-throughput, low-latency and resource-eﬃcient IO services suitable to many architectures (x86, ARM, and PowerPC) and deployment environments (bare metal, VM, container).

FD.io is a Collaborative Project at The Linux Foundation. Linux Foundation Collaborative Projects are independently funded software projects that harness the power of collaborative development to fuel innovation across industries and ecosystems. www.linuxfoundation.org

The Linux Foundation has registered trademarks and uses trademarks. For a list of trademarks of The Linux Foundation, please see its trademark usage page: https://www.linuxfoundation.org/trademark-usage. Linux is a registered trademark of Linus Torvalds.