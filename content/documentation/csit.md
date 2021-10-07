+++
title = "CSIT Documentation"
+++

The FD.io software is being continuosly be tested with the tools and
framework provided by the CSIT project (Continuous System Integration and Testing).

The project description can be found here [CSIT Project](https://docs.fd.io/csit/master/doc/).

Reports are published on a nightly basis at [CSIT Report](https://docs.fd.io/csit/master/report/).

Data on FD.io trending performance is found at [CSIT Trending](https://docs.fd.io/csit/master/trending/).

The archive of all the CSIT documents is at [CSIT Archive](https://docs.fd.io/csit/)

----------------------

## About performance

FD.io Complete System Integration Testing (CSIT) is software written for fully automated FD.io VPP code testing, functionality, performance, regression and new functions.

The [CSIT Trending Report](https://docs.fd.io/csit/master/trending) is a report that shows the FD.io performance over time. This report insures that over time FD.io will not have perfomance regressions.


### A Small Subset of the CSIT Perfomance Results

<img src="/img/performance.png" width=60% >

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
(L2XC) Cross Connect - Layer 2 switching between virtual machines using VHost/Virtio based on the VLAN tag. Scale: 2 to 4 vhost interfaces.

#### Memif (Dockers Containers)
(L2XC) Cross Connect - Layer 2 switching between containers using memif based on the VLAN tag.

#### IPSEC
QAT - IPSEC tunnel termination, with standard protocol checks accelerated by Intel Quick Assist Cryptography Accelerator. Scale: 1 to 1000 tunnels.

SW - IPSEC tunnel termination, with standard protocol checks.


{{% btn-dropdown "For All the CSIT Test Reports" %}}
{{% btn-dropelem txt="Latest Release (2009)" link="https://docs.fd.io/csit/rls2009/report/" %}}
{{% btn-dropdiv %}}
{{% btn-dropelem txt="Master" link="https://docs.fd.io/csit/master/report/" %}}
{{% btn-dropelem txt="1908" link="https://docs.fd.io/csit/rls1908/report/" %}}
{{% btn-dropelem txt="1904" link="https://docs.fd.io/csit/rls1904_2/report/" %}}
{{% btn-dropelem txt="1901" link="https://docs.fd.io/csit/rls1901_3/report/" %}}
{{%/ btn-dropdown %}}
