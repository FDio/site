## VPP Feature list:
[ACL Based Forwarding](#acl-based-forwarding)  
[ACLs for Security Groups](#acls-for-security-groups)  
[Address Resolution Protocol](#address-resolution-protocol)  
[Adjacency](#adjacency)  
[Bidirectional Forwarding Detection](#bidirectional-forwarding-detection)  
[Bit Indexed Explicit Replication](#bit-indexed-explicit-replication)  
[Bonding](#bonding)  
[Buffer Metadata Change Tracker](#buffer-metadata-change-tracker)  
[Builtin URL support for the static http or https server](#builtin-url-support-for-the-static-http-or-https-server)  
[COP](#cop)  
[Classify](#classify)  
[Data-Plane Objects](#data-plane-objects)  
[Dynamic Host Configuration Protocol](#dynamic-host-configuration-protocol)  
[GPRS Tunneling Protocol](#gprs-tunneling-protocol)  
[Generic Routing Encapsulation](#generic-routing-encapsulation)  
[IP Neighbour Database](#ip-neighbour-database)  
[IP Security](#ip-security)  
[IP in IP tunnelling](#ip-in-ip-tunnelling)  
[IPFIX probe](#ipfix-probe)  
[IPSec crypto engine provided by Intel IPSecMB library](#ipsec-crypto-engine-provided-by-intel-ipsecmb-library)  
[IPSec crypto engine provided by Openssl library](#ipsec-crypto-engine-provided-by-openssl-library)  
[IPSec crypto engine provided by native implementation](#ipsec-crypto-engine-provided-by-native-implementation)  
[IPv6 Neighbor Discovery](#ipv6-neighbor-discovery)  
[Internet Group Management Protocol](#internet-group-management-protocol)  
[L2TPv3](#l2tpv3)  
[Layer 2 Forwarding](#layer-2-forwarding)  
[Layer 3 cross connect](#layer-3-cross-connect)  
[Link Aggregation Control Protocol](#link-aggregation-control-protocol)  
[Link Layer Discovery Protocol](#link-layer-discovery-protocol)  
[Load Balancer](#load-balancer)  
[Locator ID Separation Protocol Control Plane](#locator-id-separation-protocol-control-plane)  
[Locator ID Separation Protocol Generic Protocol Extension](#locator-id-separation-protocol-generic-protocol-extension)  
[Mapping of Address and Port](#mapping-of-address-and-port)  
[Multi-Protocol Label Switching](#multi-protocol-label-switching)  
[NSH](#nsh)  
[Netmap Device](#netmap-device)  
[Network Address Translation](#network-address-translation)  
[Network Delay Simulator](#network-delay-simulator)  
[PG](#pg)  
[PPPoE](#pppoe)  
[Pipe Device](#pipe-device)  
[QUIC Protocol](#quic-protocol)  
[Quality of Service](#quality-of-service)  
[SRv6 - Service Chaining Dynamic Proxy](#srv6---service-chaining-dynamic-proxy)  
[SRv6 - Service Chaining Masquerading Proxy](#srv6---service-chaining-masquerading-proxy)  
[SRv6 - Service Chaining Static Proxy](#srv6---service-chaining-static-proxy)  
[SRv6 Mobuile](#srv6-mobuile)  
[Segment Routing for IPv6 (SRv6)](#segment-routing-for-ipv6-(srv6))  
[Segment Routing for MPLS](#segment-routing-for-mpls)  
[Session Layer](#session-layer)  
[Source VRF Select](#source-vrf-select)  
[Static http https server](#static-http-https-server)  
[TLS OpenSSL](#tls-openssl)  
[Tap Device](#tap-device)  
[Time-range-based MAC-address filter](#time-range-based-mac-address-filter)  
[Transmission Control Protocol](#transmission-control-protocol)  
[Transport Layer Security](#transport-layer-security)  
[Tunnel Infra](#tunnel-infra)  
[User Datagram Protocol](#user-datagram-protocol)  
[VNET GSO](#vnet-gso)  
[VPP Comms Library](#vpp-comms-library)  
[Virtio PCI Device](#virtio-pci-device)  
[Virtual Router Redundancy Protocol](#virtual-router-redundancy-protocol)  
[Virtual eXtensible LAN](#virtual-extensible-lan)  
[VxLAN-GPE](#vxlan-gpe)  
[host-interface Device AF_PACKET](#host-interface-device-af_packet)  
[rdma device driver](#rdma-device-driver)  
[vlib/unix](#vlib/unix)  
[vmxnet3 device driver](#vmxnet3-device-driver)  

## Feature Details:
VPP version: v20.05-rc0-457-ga26f54421

### ACL Based Forwarding
Maintainer: Neale Ranns <nranns@cisco.com>  



- Policy Based Routing
- ACLs match traffic to be forwarded
- Each rule in the ACL has an associated 'path' which determines how the traffic will be forwarded. This path is described as a FIB path, so anything possible with basic L3 forwarding is possible with ABF (with the exception of output MPLS labels)
- ACLs are grouped into a policy
- ACL priorities within the policy determine which traffic is preferentially matched
- Policies are attached to interfaces.
- ABF runs as an input feature in the L3 path

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/abf](https://git.fd.io/vpp/tree/src/plugins/abf) 
### ACLs for Security Groups
Maintainer: Andrew Yourtchenko <ayourtch@gmail.com>  

The ACL plugin allows to implement access control policies
at the levels of IP address ownership (by locking down
the IP-MAC associations by MACIP ACLs), and by using network
and transport level policies in inbound and outbound ACLs.
For non-initial fragments the matching is done on network
layer only. The session state in stateful ACLs is maintained
per-interface (e.g. outbound interface ACL creates the session
while inbound ACL matches it), which simplifies the design
and operation. For TCP handling, the session processing
tracks "established" (seen both SYN segments and seen ACKs for them),
and "transient" (all the other TCP states) sessions.

- Inbound MACIP ACLs
  - filter the source IP:MAC address statically configured bindings

- Stateless inbound and outbound ACLs
  - permit/deny packets based on their L3/L4 info

- Stateful inbound and outbound ACLs
  - create inbound sessions based on outbound traffic and vice versa


Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/acl](https://git.fd.io/vpp/tree/src/plugins/acl) 
### Address Resolution Protocol
Maintainer: Neale Ranns <nranns@cisco.com>  

An implementation of the Address resolution protocol (ARP) as described in RFC826

- ARP responder

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/arp](https://git.fd.io/vpp/tree/src/vnet/arp) 
### Adjacency
Maintainer: Neale Ranns <nranns@cisco.com>  

Adjacencies represent the next-hop information required to reach a directly connected neighbour.

- An adjacency represents how to send different traffic types to a peer
- The principles properties of an adjacency are the interface and rewrite. The rewrite will be prepended to the packet as it is forward through the interface.
- The rewrite is provided either by the interface type. It can be constructed either from fixed interface properties (i.e. src,dst IP address on a P2P tunnel) or from a resolution protocol (like ARP on an Ethernet link).
- An Adjacency is said to be complete when the rewrite is present and incomplete when it is not,
- An adjacency that is a leaf in the DPO graph is terminal/normal (i.e on a physical interface). When not terminal it is termed a midchain (i.e. one on a virtual interface, e.g. GRE tunnel). Midchain adjacencies can be stacked/joined onto the the DPO graph that described subsequent forwarding (i.e. how to send the the GRE tunnel's destination address).
- Glean adjacencies describe how to broadcast packets onto a subnet

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/adj](https://git.fd.io/vpp/tree/src/vnet/adj) 
### Bidirectional Forwarding Detection
Maintainer: Klement Sekera <ksekera@cisco.com>  

An implementation of Bidirectional Forwarding Detection (BFD).

- BFD protocol implementation

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/bfd](https://git.fd.io/vpp/tree/src/vnet/bfd) 
### Bit Indexed Explicit Replication
Maintainer: Neale Ranns <nranns@cisco.com>  

An implementation of Bit Indexed Explicit Replication (BIER)

- Multicast Using Bit Index Explicit Replication (https://tools.ietf.org/html/rfc8279)
- Encapsulation for Bit Index Explicit Replication (BIER) in MPLS and Non-MPLS Networks (https://tools.ietf.org/html/rfc8296)

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/bier](https://git.fd.io/vpp/tree/src/vnet/bier) 
### Bonding
Maintainer: Steven Luong <sluong@cisco.com>  

Bonding implementation

- Interface bonding support with the following options - mode active-backup - mode lacp - load-balance l2 | l23 | l34 - numa-only - mode xor - load-balance l2 | l23 | l34 - mode round-robin - mode broadcast

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/bonding](https://git.fd.io/vpp/tree/src/vnet/bonding) 
### Buffer Metadata Change Tracker
Maintainer: Dave Barach <dave@barachs.net>  

The Buffer Metadata Change Tracker (mdata)
uses the before / after graph node main loop performance
callback hooks to snapshoot buffer metadata, then
compare and summarize results per-node.
Answers the question "what buffer metadata does a particular
graph node change?" by direct observation.
Zero performance impact until enabled.

- Buffer Metadata Change Tracker

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/mdata](https://git.fd.io/vpp/tree/src/plugins/mdata) 
### Builtin URL support for the static http or https server
Maintainer: Dave Barach <dave@barachs.net>  

The (builtinurl) plugin adds a set of URLs to the static http/https server. Current URLs, all of which return data in .json fmt: <root-url>/version.json - vpp version info <root-url>/interface_list.json - list of interfaces <root-url>/interface_stats - single interface via HTTP POST <root-url>/interface_stats - all intfcs via HTTP GET.

- Builtin URLs for the static http/https server

Feature maturity level: development  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/builtinurl](https://git.fd.io/vpp/tree/src/plugins/builtinurl) 
### COP
Maintainer: Dave Barach <dbarach@cisco.com>  

A very simple / fast source-address whitelist feature

- v4, v6 non-default FIB src-address lookup
- Drop packets which don't hit a receive adjacency
- Not widely used

Feature maturity level: experimental  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/cop](https://git.fd.io/vpp/tree/src/vnet/cop) 
### Classify
Maintainer: Dave Barach <dbarach@cisco.com>  

Mask / match packet classifier

- Swiss-army-knife mask-match engine for classifying packets
- Uses 128-bit SIMD vector operations for performance
- Many use-cases, including packet trace / pcap capture filtration

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/classify](https://git.fd.io/vpp/tree/src/vnet/classify) 
### Data-Plane Objects
Maintainer: Neale Ranns <nranns@cisco.com>  

Data-Plane Objects (DPO)

- A DPO is a generic term (a.k.a abstract base class) for objects that perform [a set of] actions on packets in the data-plane
- Concrete examples of DPO types are; adjacency, mpls-imposition, replication.
- DPOs are stacked/joined to form a processing graph that packets traverse to describe the full set of actions a packet should experience.
- DPO graphs can be rooted at any point in the VLIB graph - notable examples are L3 FIB lookup, ABF, L3XC.

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/dpo](https://git.fd.io/vpp/tree/src/vnet/dpo) 
### Dynamic Host Configuration Protocol
Maintainer: Dave Barach <dave@barachs.net>, Neale Ranns <nranns@cisco.com>  

An implemenation of the Dynamic Host Configuration Protocol (DHCP) client

- DHCP client (v4/v6)
- DHCPv6 prefix delegation
- DHCP Proxy / Option 82

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/dhcp](https://git.fd.io/vpp/tree/src/plugins/dhcp) 
### GPRS Tunneling Protocol
Maintainer: Hongjun Ni <hongjun.ni@intel.com>  

An implementation of the GPRS Tunnelling Protocol

- GTPU decapsulation
- GTPU encapsulation

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/gtpu](https://git.fd.io/vpp/tree/src/plugins/gtpu) 
### Generic Routing Encapsulation
Maintainer: Neale Ranns <nranns@cisco.com>  

An implementation of Generic Routing Encapsulation (GRE)

- L3 tunnels, all combinations of IPv4 and IPv6
- Encap/Decap flags to control the copying of DSCP, ECN, DF from overlay to underlay and vice-versa.
- L2 tunnels

Feature maturity level: production  
Supports: API CLI MULTITHREAD  

Not yet implemented:  
- GRE keys

Source Code: [https://git.fd.io/vpp/tree/src/vnet/gre](https://git.fd.io/vpp/tree/src/vnet/gre) 
### IP Neighbour Database
Maintainer: Neale Ranns <nranns@cisco.com>  



- IP protocol independent Database of Neighbours (aka peers)
- limits on number of peers, recycling and aging

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/ip-neighbor](https://git.fd.io/vpp/tree/src/vnet/ip-neighbor) 
### IP Security
Maintainer: Neale Ranns <nranns@cisco.com>  

An implementation of IPSec

- IPSec (https://tools.ietf.org/html/rfc4301)
- Authetication Header (https://tools.ietf.org/html/rfc4302)
- Encapsulating Security Payload (https://tools.ietf.org/html/rfc4303)

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/ipsec](https://git.fd.io/vpp/tree/src/vnet/ipsec) 
### IP in IP tunnelling
Maintainer: Ole Troan <ot@cisco.com>  

Implements IP{v4,v6} over IP{v4,v6} tunnelling as
described in RFC2473. This module also implements the
border relay of 6RD (RFC5969).

- IPv4/IPv6 over IPv4/IPv6 encapsulation
  - Fragmentation and Reassembly
  - Configurable MTU
  - Inner to outer Traffic Class / TOS copy
  - Configurable Traffic Class / TOS

- ICMPv4 / ICMPv6 proxying
- 6RD (RFC5969)
  - Border Relay


Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  

Not yet implemented:  
- Tunnel PMTUD
- Tracking of FIB state for tunnel state
- IPv6 extension headers (Tunnel encapsulation limit option)

Source Code: [https://git.fd.io/vpp/tree/src/vnet/ipip](https://git.fd.io/vpp/tree/src/vnet/ipip) 
### IPFIX probe
Maintainer: Ole Troan <ot@cisco.com>  

IPFIX flow probe. Works in the L2, or IP input feature path.

- L2 input feature
- IPv4 / IPv6 input feature
- Recording of L2, L3 and L4 information

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  

Not yet implemented:  
- Output path
- Export over IPv6
- Export over TCP/SCTP

Source Code: [https://git.fd.io/vpp/tree/src/plugins/flowprobe](https://git.fd.io/vpp/tree/src/plugins/flowprobe) 
### IPSec crypto engine provided by Intel IPSecMB library
Maintainer: Neale Ranns <nranns@cisco.com>  



- SHA(1, 224, 256, 384, 512)
- CBC(128, 192, 256)
- GCM(128, 192, 256)

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/crypto_ipsecmb](https://git.fd.io/vpp/tree/src/plugins/crypto_ipsecmb) 
### IPSec crypto engine provided by Openssl library
Maintainer: Damjan Marion <damarion@cisco.com>  



- SHA(1, 224, 256, 384, 512)
- CBC(128, 192, 256)
- GCM(128, 192, 256)
- CTR(128, 192, 256)
- DES, 3DES
- MD5

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/crypto_openssl](https://git.fd.io/vpp/tree/src/plugins/crypto_openssl) 
### IPSec crypto engine provided by native implementation
Maintainer: Damjan Marion <damarion@cisco.com>  

An implentation of a native crypto-engine

- CBC(128, 192, 256)
- GCM(128, 192, 256)

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/crypto_native](https://git.fd.io/vpp/tree/src/plugins/crypto_native) 
### IPv6 Neighbor Discovery
Maintainer: Neale Ranns <nranns@cisco.com>  

An implementation of the IPv6 Neighbor discovery protocol as described in RFC4861 and RFC4862.

- Neighbor discovery.
- ND Auto address configuration
- Multicast Listener Discovery - only as host role to send adverts
- Router Advertisements

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/ip6-nd](https://git.fd.io/vpp/tree/src/vnet/ip6-nd) 
### Internet Group Management Protocol
Maintainer: Neale Ranns <nranns@cisco.com>  

An implementation of the Internet Group Management Protocol (IGMP)

- IGMPv3 only.

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/igmp](https://git.fd.io/vpp/tree/src/plugins/igmp) 
### L2TPv3
Maintainer: unmaintained  

An initial and incomplete implementation of L2TPv3 (RFC3931).

- L2TPv3 over IPv6

Feature maturity level: experimental  
Supports: API CLI  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/l2tp](https://git.fd.io/vpp/tree/src/vnet/l2tp) 
### Layer 2 Forwarding
Maintainer: John Lo <loj@cisco.com>  

Layer 2 Bridging and Cross-Connect Support

- Layer 2 (L2) Cross-connect (xconnect) of two interfaces
- Layer 2 (L2) Bridging of multiple interfaces in a bridge domain (BD)
  - Forwarding via destination MAC address of packet
  - MAC learning enable/disable on BD or per interface
  - MAC aging with specified aging interval enable/disable
  - MAC flush of learned MACs on interface down, BD deletion, or by user
  - User added static MACs not subject to aging nor overwritten by MAC learn
  - User added MACs not subject to aging but can be overwritten by MAC learn
  - Unicast forwarding enable/disable
  - Unknown unicast flooding enable/disable
  - Multicast/broadcast flooding enable/disable
  - ARP-termination to avoid flooding of ARP requests
  - Enable/disable unicast of ARP requests instead of flooding
  - BVI (Bridge Virtual Interface) for IP forwarding from or to BD
  - Set interface in BD to send unknown unicast packets instead of flooding
  - Support of split horizon group (SHG) on BD interfaces

- VLAN tag rewrite on L2 bridging or xconnect interfaces

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/l2](https://git.fd.io/vpp/tree/src/vnet/l2) 
### Layer 3 cross connect
Maintainer: Neale Ranns <nranns@cisco.com>  



- cross connect all ingress traffic on an L3 interface to an output FIB path.
- the path can describe any output (with the exception of MPLS labels)
- The same functions can be acheived by using a dedicated VRF for the table and adding a default route with the same path. However, the L3XC is more efficient in memory and CPU

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/l3xc](https://git.fd.io/vpp/tree/src/plugins/l3xc) 
### Link Aggregation Control Protocol
Maintainer: Steven Luong <sluong@cisco.com>  

Link Aggregation Control Protocol implementation (LACP)

- Support LACP version 1 specification including marker protocol

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/lacp](https://git.fd.io/vpp/tree/src/plugins/lacp) 
### Link Layer Discovery Protocol
Maintainer: Klement Sekera <ksekera@cisco.com>  

Link Layer Discovery Protocol (LLDP) implementation

- link layer discovery protocol implementation

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/lldp](https://git.fd.io/vpp/tree/src/vnet/lldp) 
### Load Balancer
Maintainer: Pfister <ppfister@cisco.com>, Hongjun Ni <hongjun.ni@intel.com>  



- GRE tunnel mode
- NAT mode
- L3DSR mode
- Consistent Hash
- Connection Track

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/lb](https://git.fd.io/vpp/tree/src/plugins/lb) 
### Locator ID Separation Protocol Control Plane
Maintainer: Florin Coras <fcoras@cisco.com>  

Locator ID Separation Protocol control plane (LISP) implementation

- ITR, ETR and RTR mode of operation
- Multitenancy
- Multihoming
- Source/dest map-cache lookups
- RLOC-probing
- Support for Ethernet, IPv4, IPv6 and NSH EIDs (payloads)
- Map-resolver failover algorithm

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/lisp-cp](https://git.fd.io/vpp/tree/src/vnet/lisp-cp) 
### Locator ID Separation Protocol Generic Protocol Extension
Maintainer: Florin Coras <fcoras@cisco.com>  

Locator ID Separation Protocol Generic Protocol Extension (LISP-GPE) implementation

- ITR, ETR and RTR modes
- Support for Ethernet, IPv4, IPv6 and NSH EIDs (payloads)
- Source/dest forwarding
- IPv4 and IPv6 RLOCs

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/lisp-gpe](https://git.fd.io/vpp/tree/src/vnet/lisp-gpe) 
### Mapping of Address and Port
Maintainer: Ole Troan <ot@cisco.com>  

Mapping of Address and Port (MAP): IPv4 as a service mechanisms. Tunnel or translate an IPv4 address, an IPv4 subnet or a shared IPv4 address. In shared IPv4 address mode, only UDP, TCP and restricted ICMP is supported.

- LW46 BR (RFC7596)
  - Fragmentation and Reassembly

- MAP-E BR (RFC7597)
- MAP-T BR (RFC7599)

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/map](https://git.fd.io/vpp/tree/src/plugins/map) 
### Multi-Protocol Label Switching
Maintainer: Neale Ranns <nranns@cisco.com>  

An implementation of Multi-Protocol Label Switching (MPLS)

- Label imposition/disposition - pipe and uniform mode
- Tunnels - unidirectional

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/mpls](https://git.fd.io/vpp/tree/src/vnet/mpls) 
### NSH
Maintainer: Hongjun Ni <hongjun.ni@intel.com>, Vengada <venggovi@cisco.com>  

NSH for SFC

- NSH Classifier
- NSH Forwarder
- NSH SF
- NSH Proxy
- NSH OAM
- NSH Metadata

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/nsh](https://git.fd.io/vpp/tree/src/plugins/nsh) 
### Netmap Device
Maintainer: Damjan Marion <damarion@cisco.com>  

Create a netmap interface, which is a high speed user-space interface that allows VPP to patch into a linux namespace, a linux container, or a physical NIC without the use of DPDK.

- L4 checksum offload

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  

Not yet implemented:  
- API dump

Source Code: [https://git.fd.io/vpp/tree/src/deprecated/netmap](https://git.fd.io/vpp/tree/src/deprecated/netmap) 
### Network Address Translation
Maintainers: Ole Troan <ot@cisco.com>, Filip Varga <fivarga@cisco.com>  

The Network Address Translation (NAT) plugin offers a multiple address translation functions. These can be used in a raft of different scenarios. CPE, CGN, etc.

- NAT44
  - 1:1 NAT
  - 1:1 NAT with ports
  - VRF awareness
  - Multiple inside interfaces
  - Hairpinning
  - IPFIX
  - Syslog
  - Endpoint dependent NAT
  - TCP MSS clamping
  - Local bypass (DHCP)

- CGN - deterministic NAT
- NAT64
- NAT66
- DS-lite
- 464XLAT

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/nat](https://git.fd.io/vpp/tree/src/plugins/nat) 
### Network Delay Simulator
Maintainer: Dave Barach <dave@barachs.net>  

Introduces configurable network delay and loss

- Network delay and loss fraction simulator

Feature maturity level: production  
Supports: CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/nsim](https://git.fd.io/vpp/tree/src/plugins/nsim) 
### PG
Maintainer: Dave Barach <dbarach@cisco.com>  

High-speed packet generator

- High-speed packet generation
- Packet definition CLI
- Support for pcap capture replay
- Multi-thread packet generation
- Packet injection into arbitrary graph nodes
- Heavily used by "make test"

Feature maturity level: production  
Supports: CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/pg](https://git.fd.io/vpp/tree/src/vnet/pg) 
### PPPoE
Maintainer: Hongjun Ni <hongjun.ni@intel.com>  

PPP over Ethernet

- PPPoE Control Plane packet dispatch
- PPPoE decapsulation
- PPPoE encapsulation

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/pppoe](https://git.fd.io/vpp/tree/src/plugins/pppoe) 
### Pipe Device
Maintainer: Damjan Marion <damarion@cisco.com>  

Create a pipe device interface, which can pass packets bidirectionally in one side of the pipe to the other side of the pipe. While similar in behavior to a unix pipe, it is not a host-based pipe.

- L4 checksum offload

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  

Not yet implemented:  
- does not use hw-address
- does not support tagged traffic
- API dump filtering by sw_if_index

Source Code: [https://git.fd.io/vpp/tree/src/vnet/devices/pipe](https://git.fd.io/vpp/tree/src/vnet/devices/pipe) 
### QUIC Protocol
Maintainer: Aloys Augustin <aloaugus@cisco.com>  

IETF QUIC Protocol implementation

- host stack integration via session layer
- based on the Quicly library: https://github.com/h2o/quicly

Feature maturity level: experimental  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/quic](https://git.fd.io/vpp/tree/src/plugins/quic) 
### Quality of Service
Maintainer: Neale Ranns <nranns@cisco.com>  

An implentation of Quality of Service (QoS)

- Record - extract QoS bits from packets headers and write in metadata
- Mapp - defines simple transform of QoS bits from/to each packet layer
- Mark - write [mapped] QoS bits into packet headers
- Store - write in packet metadata a fixed QoS value

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/qos](https://git.fd.io/vpp/tree/src/vnet/qos) 
### SRv6 - Service Chaining Dynamic Proxy
Maintainer: Francois Clad <fclad@cisco.com>  

SRv6 dynamic proxy

- SRv6 - dynamic service chaining proxy (draft-ietf-spring-sr-service-programming-01)

Feature maturity level: production  
Supports: CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/srv6-ad](https://git.fd.io/vpp/tree/src/plugins/srv6-ad) 
### SRv6 - Service Chaining Masquerading Proxy
Maintainer: Francois Clad <fclad@cisco.com>  

SRv6 masquerading proxy

- SRv6 - masquerading service chaining proxy (draft-ietf-spring-sr-service-programming-01)

Feature maturity level: production  
Supports: CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/srv6-am](https://git.fd.io/vpp/tree/src/plugins/srv6-am) 
### SRv6 - Service Chaining Static Proxy
Maintainer: Francois Clad <fclad@cisco.com>  

SRv6 static proxy

- SRv6 - static service chaining proxy (draft-ietf-spring-sr-service-programming-01)

Feature maturity level: production  
Supports: CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/srv6-as](https://git.fd.io/vpp/tree/src/plugins/srv6-as) 
### SRv6 Mobuile
Maintainer: Tetsuya Murakami <tetsuya.mrk@gmail.com>  

SRv6 Mobile End Functions. GTP4.D, GTP4.E, GTP6.D, GTP6.D.Di and GTP6.E are supported.

- GTP4.D
- GTP4.E
- GTP6.D
- GTP6.D.Di
- GTP6.E

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/srv6-mobile](https://git.fd.io/vpp/tree/src/plugins/srv6-mobile) 
### Segment Routing for IPv6 (SRv6)
Maintainer: Pablo Camarillo <pcamaril@cisco.com>  

Full SRv6 Network Programming implementation

- Support for SRv6 Network Programming (draft-ietf-spring-srv6-network-programming-07)
- SR Headend behaviors (H.Encaps, H.Encaps.Red, H.Encaps.L2, H.Encaps.L2.Red)
- SR Endpoint behaviors (End, End.X, End.T) for intermediate TE with PSP support
- SR Endpoint behaviors (End.DX4, End.DX6, End.DT4, End.DT6, End.DX2) for overlay creation
- SR Endpoint behaviors (End.B6.Encaps.Red) for BindingSID instantiation
- Support for SRH insertion (draft-filsfils-spring-srv6-net-pgm-insertion-01)
- SR counters
- SR policy implementation (draft-ietf-spring-segment-routing-policy-02)
- SR steering based on IP prefix / L2 interface classification

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/srv6](https://git.fd.io/vpp/tree/src/vnet/srv6) 
### Segment Routing for MPLS
Maintainer: Pablo Camarillo <pcamaril@cisco.com>  

SR-MPLS

- SR Policy support
- Automated steering (SR steering based on NextHop/Color)

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/srmpls](https://git.fd.io/vpp/tree/src/vnet/srmpls) 
### Session Layer
Maintainer: Florin Coras <fcoras@cisco.com>  

The session layer facilitates the interaction between northbound applications and southbound transport protocols. To this end, northbound, through the app-interface sub layer, the session layer exposes APIs for applications to interact with abstract units of communication, i.e., sessions. And southbound, through the transport protocol interface, it exposes APIs that allow transport protocols to exchange data and events (ctrl and io) with applications, without actually being aware of how that communication is carried out.

- Manages allocation and tracking of sessions (6-tuple lookup tables)
- App namespaces that constrain application access to network resources
- Conveys data and notifications (ctrl and io) between transport protocols and apps
- Transport protocol interface
  - Provides generic transport protocol template
  - Converts between transport and application representation of data
  - Schedules sessions/connections for sending

- Application interface
  - Maintains per application state
  - Manages allocation of shared memory resources used for exchanging data between applications and transports
  - Exposes a native C and a binary api for builtin and external apps respectively


Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/session](https://git.fd.io/vpp/tree/src/vnet/session) 
### Source VRF Select
Maintainer: Neale Ranns <nranns@cisco.com>  



- Determine the input VRF/table based on the source IP address
- routes are added to tables.
- route lookup is performed using the packet's source address
- The route is programmed with the table in which the subsequent destination address lookup will be performed
- Tables are bound to interfaces.
- SVS runs as an input feature in the L3 path

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/svs](https://git.fd.io/vpp/tree/src/plugins/svs) 
### Static http https server
Maintainer: Dave Barach <dave@barachs.net>  

A simple caching static http / https server A built-in vpp host stack application. Supports HTTP GET and HTTP POST methods.

- An extensible static http/https server with caching

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/http_static](https://git.fd.io/vpp/tree/src/plugins/http_static) 
### TLS OpenSSL
Maintainer: Florin Coras <fcoras@cisco.com>, Ping Yu <ping.yu@intel.com>  

TLS OpenSSL plugin for VPP host stack

- OpenSSL engine for TLS
- TLS Async framework
- Enable QAT for crypto offload

Feature maturity level: experimental  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/tlsopenssl](https://git.fd.io/vpp/tree/src/plugins/tlsopenssl) 
### Tap Device
Maintainer: damarion@cisco.com sluong@cisco.com sykazmi@cisco.com  

Create a tap v2 device interface, which connects to a tap interface on the host system.

- Virtio
- persistence
- attach to existing tap at host

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  

Not yet implemented:  
- API dump filtering by sw_if_index

Source Code: [https://git.fd.io/vpp/tree/src/vnet/devices/tap](https://git.fd.io/vpp/tree/src/vnet/devices/tap) 
### Time-range-based MAC-address filter
Maintainer: Dave Barach <dave@barachs.net>  

Device-input/output arc driver level MAC filter. Checks to see if traffic is allowed to/from the given MAC address, and takes the appropriate action. Intended for the home gateway use-case, where WAN traffic is billed per bit.

- Static / time-range / data quota based MAC address filter

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/mactime](https://git.fd.io/vpp/tree/src/plugins/mactime) 
### Transmission Control Protocol
Maintainer: Florin Coras <fcoras@cisco.com>  

High speed and scale Transmission Control Protocol (TCP) implementation

- Core functionality (RFC793, RFC5681, RFC6691)
- Extensions for high performance (RFC7323)
- Congestion control extensions (RFC3465, RFC8312)
- Loss recovery extensions (RFC2018, RFC3042, RFC6582, RFC6675, RFC6937)
- Detection and prevention of spurious retransmits (RFC3522)
- Defending spoofing and flooding attacks (RFC6528)
- Partly implemented features (RFC1122, RFC4898, RFC5961)
- Delivery rate estimation (draft-cheng-iccrg-delivery-rate-estimation)

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/tcp](https://git.fd.io/vpp/tree/src/vnet/tcp) 
### Transport Layer Security
Maintainers: Florin Coras <fcoras@cisco.com>, Ping Yu <ping.yu@intel.com>  

Transport Layer Security (TLS) protocol implementation that consists of a set of engines that act as wrappers for existing TLS implementations, e.g., OpenSSL, Picotls and MbedTLS, and a framework that integrates the engines into VPP's host stack

- Framework that supports pluggable TLS engines
- OpenSSL, Picotls and MbedTLS engines

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/tls](https://git.fd.io/vpp/tree/src/vnet/tls) 
### Tunnel Infra
Maintainer: Neale Ranns <nranns@cisco.com>  

Tunnel Infrastructure

- Common types and functions for IP tunnels

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/tunnel](https://git.fd.io/vpp/tree/src/vnet/tunnel) 
### User Datagram Protocol
Maintainer: Florin Coras <fcoras@cisco.com>  

User Datagram Protocol (UDP) implementation

- host stack integration via session layer
- standalone per port dispatcher for tunneling protocols

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/udp](https://git.fd.io/vpp/tree/src/vnet/udp) 
### VNET GSO
Maintainer: ayourtch@gmail.com sykazmi@cisco.com  

Generic Segmentation Offload

- Basic GSO support
- GSO for VLAN tagged packets
- Provide inline function to get header offsets

Feature maturity level: experimental  
Supports: API CLI  

Not yet implemented:  
- Tunnels i.e. VXLAN

Source Code: [https://git.fd.io/vpp/tree/src/vnet/gso](https://git.fd.io/vpp/tree/src/vnet/gso) 
### VPP Comms Library
Maintainer: Florin Coras <fcoras@cisco.com>  

VPP Comms Library (VCL) simplifies app interaction with session layer by exposing APIs that are similar to but not POSIX-compliant.

- Abstracts vpp host stack sessions to integer session handles
- Exposes its own async communication functions, i.e., epoll, select, poll
- Supports multi-worker applications
- Sessions cannot be shared between multiple threads/processes
- VCL Locked Sessions (VLS)
  - Ensure through locking that only one thread accesses a session at a time
  - Detects and registers forked processes as new VCL workers. It does not register threads as new workers.

- LD_PRELOAD shim (LDP)
  - Intercepts syscalls and injects them into VLS.
  - Applications that are supported work with VCL and implicitly with VPP's host stack without any code change
  - It does not support all syscalls and syscall options


Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vcl](https://git.fd.io/vpp/tree/src/vcl) 
### Virtio PCI Device
Maintainer: sykazmi@cisco.com sluong@cisco.com  

Virtio v1.0 implementation

- driver mode to emulate PCI interface presented to VPP from the host interface.
- device mode to emulate vhost-user interface presented to VPP from the guest VM.
- support multi-queue, GSO, checksum offload, indirect descriptor, and jumbo frame.

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  

Not yet implemented:  
- API dump filtering by sw_if_index

Source Code: [https://git.fd.io/vpp/tree/src/vnet/devices/virtio](https://git.fd.io/vpp/tree/src/vnet/devices/virtio) 
### Virtual Router Redundancy Protocol
Maintainer: Matthew Smith <mgsmith@netgate.com>  

Virtual Router Redundancy Protocol implementation (VRRPv3)

- VRRPv3 (RFC 5798) for IPv4 and IPv6
  - Signaling/advertisements and election of a master
  - Replies to ARP, NS requests for virtual router addresses

- VRRP virtual MAC address support
  - DPDK interfaces with PMD support for multiple MAC addresses via the rte_eth_dev_mac_addr_add(), rte_eth_dev_mac_addr_del()
  - Other interfaces which are set in promiscuous mode may work

- Support interface types for VRRP virtual routers
  - Hardware interfaces
  - VLAN subinterfaces
  - Bond interfaces

- Additional features not specified in RFC 5798
  - Allows sending advertisements to unicast peers instead of multicast
  - Allows a virtual router's priority to be adjusted based on the state of an upstream interface. Mentioned as a configuration option to "track interfaces or networks" in RFC 8347.


Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/vrrp](https://git.fd.io/vpp/tree/src/plugins/vrrp) 
### Virtual eXtensible LAN
Maintainer: John Lo <loj@cisco.com>  

Virtual eXtensible LAN (VXLAN) tunnels support L2 overlay networks that span L3 networks

- VXLAN tunnel for support of L2 overlay/virtual networks (RFC-7348)
- Support either IPv4 or IPv6 underlay network VTEPs
- Flooding via headend replication if all VXLAN tunnels in BD are unicast ones
- Multicast VXLAN tunnel can be added to BD to flood via IP multicast
- VXLAN encap with flow-hashed source port for better underlay IP load balance
- VXLAN decap optimization via vxlan-bypass IP feature on underlay interfaces
- VXLAN decap HW offload using flow director with DPDK on Intel Fortville NICs

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/vxlan](https://git.fd.io/vpp/tree/src/vnet/vxlan) 
### VxLAN-GPE
Maintainer: Hongjun Ni <hongjun.ni@intel.com>  

VxLAN-GPE tunnel handling

- VxLAN-GPE decapsulation
- VxLAN-GPE encapsulation

Feature maturity level: production  
Supports: API CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vnet/vxlan-gpe](https://git.fd.io/vpp/tree/src/vnet/vxlan-gpe) 
### host-interface Device AF_PACKET
Maintainer: Damjan Marion <damarion@cisco.com>  

Create a host interface that will attach to a linux AF_PACKET interface, one side of a veth pair. The veth pair must already exist. Once created, a new host interface will exist in VPP with the name 'host-<ifname>', where '<ifname>' is the name of the specified veth pair. Use the 'show interface' command to display host interface details.

- L4 checksum offload

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  

Not yet implemented:  
- API dump details beyond sw_if_index and name

Source Code: [https://git.fd.io/vpp/tree/src/vnet/devices/af_packet](https://git.fd.io/vpp/tree/src/vnet/devices/af_packet) 
### rdma device driver
Maintainer: Benoît Ganne <bganne@cisco.com>  

rdma device driver support

- rdma driver for Mellanox ConnectX-4/5 adapters

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/rdma](https://git.fd.io/vpp/tree/src/plugins/rdma) 
### vlib/unix
Maintainer: Dave Barach <dbarach@cisco.com>  

Linux-specific support routines

- epoll-based file I/O support
- Linux signal handling
- Syslog support
- Startup configuration processing, logging
- Configuration debug CLI pager, banner, main loop polling interval
- Per-thread stack allocation, guard-page setup

Feature maturity level: production  
Supports: CLI MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/vlib/unix](https://git.fd.io/vpp/tree/src/vlib/unix) 
### vmxnet3 device driver
Maintainer: Steven Luong <sluong@cisco.com>  

vmxnet3 device driver support

- vmxnet3 device driver to connect to ESXi server, VMWare Fusion, and VMWare Workstation

Feature maturity level: production  
Supports: API CLI STATS MULTITHREAD  
Source Code: [https://git.fd.io/vpp/tree/src/plugins/vmxnet3](https://git.fd.io/vpp/tree/src/plugins/vmxnet3) 

