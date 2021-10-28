+++
title = "FD.io Release 20.01 Improves Multicore IPSec"
author = "Linux Foundation Networking"
link = "https://www.lfnetworking.org/blog/2020/03/23/how-fd-io-20-01-release-improves-multicore-ipsec/"
linkText = "How FD.io Improves Multicore IPSec"

date = "2020-03-23"
+++

The rise in worker mobility and increasingly complex multi-cloud architectures is escalating organizations’ reliance
on encryption. This puts computational strain on VPN products, especially as they evolve, for example, from 1 to 10
to 40 Gbps or more. Traditional router/VPN appliances buckle under the load, forcing the quest for higher performance
solutions that won’t break the bank.

High-performance IPSec is an application where VPP clearly shines – especially when compared to traditional
solutions underpinned by kernel-based, single packet at a time processing approaches.
In fact, one vendor who has productized VPP reports observing the following performance numbers
(based on AES-GCM-128 encrypted IMIX traffic being processed by a stock Intel® Xeon® Gold 6130 CPU @ 2.10GHz CPU):

* 3.07 MPPS (8.86 Gbps) (QAT assist)
* 2.13 MPPS (6.14 Gbps) (no QAT assist)

**That was on a single core.**

For more on FD.io Improves Multicore IPSec click below.