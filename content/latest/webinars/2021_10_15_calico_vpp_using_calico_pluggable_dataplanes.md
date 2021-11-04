+++
title = "Calico/VPP: Using Calico’s Pluggable Dataplanes for Fun and Fast Networking"

date = "2021-10-15"
time_slot = "11:55am - 12:30am PST"
type = "webinar"
pdfurl =  "https://static.sched.com/hosted_files/kccncna2021/4c/Calico_VPP%20KCNA%202021.pdf"
+++

The Calico VPP dataplane, introduced during last year’s KubeCon, adds a new networking option for Calico on Linux alongside iptables and eBPF. This takes advantage of Calico’s pluggable dataplane support, which offers futureproofing and agility for the user in dataplane choices. As it turns out, having VPP’s flexible and modular userspace networking stack in a Kubernetes environment enables all sorts of interesting things -- such as allowing network-intensive pods to send and receive data at ludicrous speeds while conserving the CNI features we love, thanks to kernel bypass. This is useful for any workload that spends most of its time doing network I/O. Think proxy, content delivery server, or network functions such as VPN endpoints. In this talk, we will show you how we achieve that, the level of performance that we can reach, and how it compares to other approaches. 

{{% btn txt="Event link" link="https://kccncna2021.sched.com/event/lV4o/calicovpp-using-calicos-pluggable-dataplanes-for-fun-and-fast-networking-aloys-augustin-cisco-chris-tomkins-tigera" %}}


### Speakers

{{< speaker name="Chris Tomkins - Developer Advocate @ Project Calico/Tigera" twitter="TomkinsDa" linkedin="cdtomkins" img="/img/webinars/calico_vpp/chris_tomkins.jpeg">}}
Chris is a developer advocate at Tigera, where he champions user needs to support Project Calico’s users and 
contributor community. He has worked in networking since 2000. After realising that a per-device CLI is not a 
scalable solution for a large environment, he took an early interest in infrastructure-as-code approaches and 
large-scale automation and continues to have a special interest in pursuing technologies in these areas.
{{< /speaker >}}

{{< speaker name="Aloys Augustin - Software Engineer @ Cisco" twitter="alogusse" github="AloysAugustin" img="/img/webinars/calico_vpp/aloys_augustin.jpg">}}
Aloys Augustin is the main author of the Calico/VPP integration, and he has worked on cloud infrastructure technologies since 2016. He joined the VPP team at Cisco in 2018 where he focuses on container networking. He is also the maintainer of the QUIC stack in VPP.
{{< /speaker >}}

