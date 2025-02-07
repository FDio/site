+++
title = "VPP: 100Mpps of MPLS on a Linux PC"

date = "2024-02-03"
time_slot = "2:20pm - 2:20pm CET"
type = "webinar"

youtubeurl = "https://archive.fosdem.org/2024/schedule/event/fosdem-2024-1919-vpp-100mpps-of-mpls-on-a-linux-pc/"
ppturl =  "https://go.ipng.ch/fosdem24-vpp"

previewimage = "/img/webinars/video_2024_02_03_vpp_100mpps_of_mpls_on_a_linux_pc.jpg"

+++

In this talk, Pim will demonstrate high performance routing using open-source VPP and its underlying Data Plane Development Kit. This talk highlights the authors work on integrating the Linux Control Plane which makes BGP, OSPF, etc available with VPP, including smart ways to automate configuration of the router's data- and controlplane layers.

In 2023, Pim helped Adrian vifino Pistol to implement MPLS support in VPP's Linux ControlPlane plugin, and now folks can deploy a fully MPLS capable P-/PE router in excess of 100Mpps on a cheap PC.

### Speakers

{{< speaker name="Pim van Pelt" img="/img/speakers/pim_van_pelt.jpg">}}
Pim van Pelt is known for SixXS, a global IPv6 tunnelbroker which ran from 2001-2017. In this journey, he found that kernel routing at scale (many interfaces, many prefixes or many packets/sec) were better handled in userspace than server kernels (either FreeBSD or Linux). Today, Pim operates IPng Networks GmbH, a small internet provider in Zurich, Switzerland. IPng Networks is using software-based off-the-shelf PC routers which will give silicon-based routers a run for their money. In this talk, we will explore Intel's DataPlane Development Kit (https://dpdk.org), open source dataplane solutions such as VPP (https://fd.io), DANOS (https://danosproject.org), DPDK based loadtesting (https://trex-tgn.cisco.com) and discuss performance benchmarking results from the field.
{{< /speaker >}}
