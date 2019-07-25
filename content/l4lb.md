+++
title = "Yahoo! Japan, Solutions Brief"
bgImage = "img/fdio_bg_tech2.jpg"
id= "community"
+++

# FD.io L4 Load Balancer

Yahoo! JAPAN addresses infrastructure scalability challenges through
the adoption of commodity x86 servers combined with the Linux Foundation
Networking Fast Data Project (FD.io).

This solution brief outlines key
design choices and required functionality in the move from a traditional
Enterprise load balancing implementation to an open software-based,
cloud-native scalable, load balancing implementation running on commodity x86 servers.

- - -

### COMPANY
- 100+ Services
- 70+ Billion Monthly page views
- 90+ Million daily browsers
- 60+ Mission daily smart phone sessions

### SOLUTION
- L3DSR L4 Software Load Balancer
- Scaling-in/out (N+1) LB capability on top of Clos • Simple integration with BGP

### CHALLENGE
- Variety of HW load balancers to support services • 140K+ VMs
- Robust scalable LBaaS
- HW upgrades and downtime

### BENEFITS
- Commodity x86 servers
- Built on open source with FD.io VPP data plane • Sufficient wire performance
- Zero downtime for upgrades
- 140K+ VMs
- Robust scalable LBaaS
- HW upgrades and downtime

- - -

“The rapid increase of service endpoints and traffic coming into our large-scale
data center in conjunction with constant endpoint changes (e.g., bare-metal to
VM or container) resulted in a need to re-architect our load balancing infrastructure
to address scalability and on-demand deployment – without downtime. To respond to
this challenge – and achieve networking agility – we built a software L4 load balancer
cluster and management system based on FD.io VPP (Vector Packet Processing). This
solution provides not only wire-rate fast and scalable forwarding performance, but
also fast deployment and stable operation of a LB cluster with zero downtime on a
Clos architecture for data center.”

- Yusuke Tatsumi, network infrastructure engineer at Yahoo! JAPAN

- - -

## SOLUTION OVERVIEW

Our scalable cloud native L4 load balancer is built from the following components:
commodity x86 servers, Linux, FD.io VPP-based load balancer nodes, and a centralized
custom-built load balancer controller. Given that traffic from our services back to
the clients’ is 2x – 10x greater than that coming from clients, we went with a load
balancer choice of L3 Direct Server Return (L3DSR). This approach avoids the tunneling
overhead associated with DSCP - providing significant bandwidth savings.

