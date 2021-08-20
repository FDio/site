+++
subtitle="""

#### FD.io Complete System Integration Testing (CSIT) is software written for fully automated FD.io VPP code testing, functionality, performance, regression and new functions.

"""

btntxt="For All the CSIT Test Reports"
# The first part of these strings are displayed in the dropdown.
# The second is the url
latest = "Latest Release (2106), https://s3-docs.fd.io/csit/rls2106/report/"
versions = ["Master, https://s3-docs.fd.io/csit/master/report/"]
+++

#### The [CSIT Trending Report](https://s3-docs.fd.io/csit/master/trending) is a report that shows the FD.io performance over time. This report insures that over time FD.io will not have perfomance regressions.

<br>

### A Small Subset of the CSIT Perfomance Results

<img src="/img/performance.png" width=60% >
<br>

### Tests Cases Summary

#### Layer 2
L2XC (Cross Connect) - Layer 2 switching between physical ports based on the VLAN tag.

Bridge w/Mac Learning - Layer 2 switching between physical ports based on the learned MAC addresses. Scale: 1 to 1 million mac addresses.

#### Layer 3
IPv4 Routing - Routing based on an IPv4 destination IP address, with standard IP protocol checks. Scaling from 1 to 2 million routes in the forwarding plane. Scale : 1 to 2 million routes

IPv6 Routing - Routing based on an IPv6 destination IP address, with standard IP protocol checks. Scaling from 1 to 2 million routes in the forwarding plane. Scale : 1 to 2 million routes

#### Overlays
IPv4 VXLan - IPv4 VXLan tunnel termination, with standard protocol checks.

IPv6 VXLan - IPv6 VXLan tunnel termination, with standard protocol checks.

#### VHost
(L2XC) Cross Connect** - Layer 2 switching between virtual machines using VHost/Virtio based on the VLAN tag. Scale: 2 to 4 vhost interfaces.

#### Memif (Dockers Containers)
(L2XC) Cross Connect** - Layer 2 switching between containers using memif based on the VLAN tag.

#### IPSEC
QAT - IPSEC tunnel termination, with standard protocol checks accelerated by Intel Quick Assist Cryptography Accelerator. Scale: 1 to 1000 tunnels.

SW - IPSEC tunnel termination, with standard protocol checks.
<br>
