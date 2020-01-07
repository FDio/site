# ACL Based Forwarding
Maintainer: Neale Ranns <nranns@cisco.com>  
State: production  

ACL Based Forwarding

- Policy Based Routing
- ACLs match traffic to be forwarded
- Each rule in the ACL has an associated 'path' which determines how the traffic will be forwarded. This path is described as a FIB path, so anything possible with basic L3 forwarding is possible with ABF (with the exception of output MPLS labels)
- ACLs are grouped into a policy
- ACL priorities within the policy determine which traffic is preferentially matched
- Policies are attached to interfaces.
- ABF runs as an input feature in the L3 path

# Builtin URL support for the static http/https server (builtinurl)
Maintainer: Dave Barach <dave@barachs.net>  
State: development  

Adds a set of URLs to the static http/https server. Current URLs, all of which return data in .json fmt: <root-url>/version.json - vpp version info <root-url>/interface_list.json - list of interfaces <root-url>/interface_stats - single interface via HTTP POST <root-url>/interface_stats - all intfcs via HTTP GET.

- Builtin URLs for the static http/https server

# IPSec crypto engine provided by native implementation
Maintainer: Damjan Marion <damarion@cisco.com>  
State: production  

native crypto-engine

- CBC(128, 192, 256)
- GCM(128, 192, 256)

# IPSec crypto engine provided by Intel IPSecMB library
Maintainer: Neale Ranns <nranns@cisco.com>  
State: production  

IPSecMB crypto-engine

- SHA(1, 224, 256, 384, 512)
- CBC(128, 192, 256)
- GCM(128, 192, 256)

# IPSec crypto engine provided by Openssl library
Maintainer: Damjan Marion <damarion@cisco.com>  
State: production  

openssl crypto-engine

- SHA(1, 224, 256, 384, 512)
- CBC(128, 192, 256)
- GCM(128, 192, 256)
- CTR(128, 192, 256)
- DES, 3DES
- MD5

# Dynamic Host Configuration Protocol (DHCP)
Maintainer: Dave Barach <dave@barachs.net>, Neale Ranns <nranns@cisco.com>  
State: production  

DHCP client

- DHCP client (v4/v6)
- DHCPv6 prefix delegation
- DHCP Proxy / Option 82

# IPFIX probe
Maintainer: Ole Troan <ot@cisco.com>  
State: production  

IPFIX flow probe. Works in the L2, or IP input feature path.

- L2 input feature
- IPv4 / IPv6 input feature
- Recording of L2, L3 and L4 information

## Missing
- Output path
- Export over IPv6
- Export over TCP/SCTP

# Static http/https server (http_static)
Maintainer: Dave Barach <dave@barachs.net>  
State: production  

A simple caching static http / https server A built-in vpp host stack application. Supports HTTP GET and HTTP POST methods.

- An extensible static http/https server with caching

# Internet Group Management Protocol
Maintainer: Neale Ranns <nranns@cisco.com>  
State: production  

IGMP

- IGMPv3 only.

# Layer 3 cross connect
Maintainer: Neale Ranns <nranns@cisco.com>  
State: production  

L3-xconnect

- cross connect all ingress traffic on an L3 interface to an output FIB path.
- the path can describe any output (with the exception of MPLS labels)
- The same functions can be acheived by using a dedicated VRF for the table and adding a default route with the same path. However, the L3XC is more efficient in memory and CPU

# Time-range-based MAC-address filter (mactime)
Maintainer: Dave Barach <dave@barachs.net>  
State: production  

Device-input/output arc driver level MAC filter. Checks to see if traffic is allowed to/from the given MAC address, and takes the appropriate action. Intended for the home gateway use-case, where WAN traffic is billed per bit.

- Static / time-range / data quota based MAC address filter

# Mapping of Address and Port (MAP)
Maintainer: Ole Troan <ot@cisco.com>  
State: production  

IPv4 as a service mechanisms. Tunnel or translate an IPv4 address, an IPv4 subnet or a shared IPv4 address. In shared IPv4 address mode, only UDP, TCP and restricted ICMP is supported.

- LW46 BR (RFC7596)
  - Fragmentation and Reassembly
- MAP-E BR (RFC7597)
- MAP-T BR (RFC7599)

# Buffer Metadata Change Tracker (mdata)
Maintainer: Dave Barach <dave@barachs.net>  
State: production  

Buffer Metadata Change Tracker
Uses the before / after graph node main loop performance
callback hooks to snapshoot buffer metadata, then
compare and summarize results per-node.
Answers the question "what buffer metadata does a particular
graph node change?" by direct observation.
Zero performance impact until enabled.

- Buffer Metadata Change Tracker

# Network Address Translation (NAT)
Maintainers: Ole Troan <ot@cisco.com>, Filip Varga <fivarga@cisco.com>  
State: production  

The NAT plugin offers a multiple address translation functions. These can be used in a raft of different scenarios. CPE, CGN, etc.

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

# Network Delay Simulator
Maintainer: Dave Barach <dave@barachs.net>  
State: production  

Introduces configurable network delay and loss

- Network delay and loss fraction simulator

# SRv6 Mobuile
Maintainer: Tetsuya Murakami <tetsuya.mrk@gmail.com>  
State: production  

SRv6 Mobile End Functions. GTP4.D, GTP4.E, GTP6.D, GTP6.D.Di and GTP6.E are supported.

- GTP4.D
- GTP4.E
- GTP6.D
- GTP6.D.Di
- GTP6.E

# Source VRF Select
Maintainer: Neale Ranns <nranns@cisco.com>  
State: production  

Source VRF Select

- Determine the input VRF/table based on the source IP address
- routes are added to tables.
- route lookup is performed using the packet's source address
- The route is programmed with the table in which the subsequent destination address lookup will be performed
- Tables are bound to interfaces.
- SVS runs as an input feature in the L3 path

# VPP Comms Library (VCL)
Maintainer: Florin Coras <fcoras@cisco.com>  
State: production  

VCL simplifies app interaction with session layer by exposing APIs that are similar to but not POSIX-compliant.

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

# Adjacency
Maintainer: Neale Ranns <nranns@cisco.com>  
State: production  

Adjacency

- An adjacency represents how to send different traffic types to a peer
- The principles properties of an adjacency are the interface and rewrite. The rewrite will be prepended to the packet as it is forward through the interface.
- The rewrite is provided either by the interface type. It can be constructed either from fixed interface properties (i.e. src,dst IP address on a P2P tunnel) or from a resolution protocol (like ARP on an Ethernet link).
- An Adjacency is said to be complete when the rewrite is present and incomplete when it is not,
- An adjacency that is a leaf in the DPO graph is terminal/normal (i.e on a physical interface). When not terminal it is termed a midchain (i.e. one on a virtual interface, e.g. GRE tunnel). Midchain adjacencies can be stacked/joined onto the the DPO graph that described subsequent forwarding (i.e. how to send the the GRE tunnel's destination address).
- Glean adjacencies describe how to broadcast packets onto a subnet

# Address Resolution Protocol
Maintainer: Neale Ranns <nranns@cisco.com>  
State: production  

ARP

- ARP responder

# Bidirectional Forwarding Detection (BFD)
Maintainer: Klement Sekera <ksekera@cisco.com>  
State: production  

Bidirectional Forwarding Detection implementation

- BFD protocol implementation

# Bit Indexed Explicit Replication
Maintainer: Neale Ranns <nranns@cisco.com>  
State: production  

BIER

- Multicast Using Bit Index Explicit Replication (https://tools.ietf.org/html/rfc8279)
- Encapsulation for Bit Index Explicit Replication (BIER) in MPLS and Non-MPLS Networks (https://tools.ietf.org/html/rfc8296)

# host-interface Device (AF_PACKET)
Maintainer: Damjan Marion <damarion@cisco.com>  
State: production  

Create a host interface that will attach to a linux AF_PACKET interface, one side of a veth pair. The veth pair must already exist. Once created, a new host interface will exist in VPP with the name 'host-<ifname>', where '<ifname>' is the name of the specified veth pair. Use the 'show interface' command to display host interface details.

- L4 checksum offload

## Missing
- API dump details beyond sw_if_index and name

# Netmap Device
Maintainer: Damjan Marion <damarion@cisco.com>  
State: production  

Create a netmap interface, which is a high speed user-space interface that allows VPP to patch into a linux namespace, a linux container, or a physical NIC without the use of DPDK.

- L4 checksum offload

## Missing
- API dump

# Pipe Device
Maintainer: Damjan Marion <damarion@cisco.com>  
State: production  

Create a pipe device interface, which can pass packets bidirectionally in one side of the pipe to the other side of the pipe. While similar in behavior to a unix pipe, it is not a host-based pipe.

- L4 checksum offload

## Missing
- does not use hw-address
- does not support tagged traffic
- API dump filtering by sw_if_index

# Tap Device
Maintainer: damarion@cisco.com sluong@cisco.com sykazmi@cisco.com  
State: production  

Create a tap v2 device interface, which connects to a tap interface on the host system.

- Virtio

## Missing
- API dump filtering by sw_if_index

# Virtio PCI Device
Maintainer: Mohsin Kazmi <sykazmi@cisco.com>  
State: production  

Create a virtio-backed PCI device interface

- connection to the emulated pci interface presented to vpp from the host interface.

## Missing
- API dump filtering by sw_if_index

# Data-Plane Objects
Maintainer: Neale Ranns <nranns@cisco.com>  
State: production  

DPO

- A DPO is a generic term (a.k.a abstract base class) for objects that perform [a set of] actions on packets in the data-plane
- Concrete examples of DPO types are; adjacency, mpls-imposition, replication.
- DPOs are stacked/joined to form a processing graph that packets traverse to describe the full set of actions a packet should experience.
- DPO graphs can be rooted at any point in the VLIB graph - notable examples are L3 FIB lookup, ABF, L3XC.

# IP in IP tunnelling
Maintainer: Ole Troan <ot@cisco.com>  
State: production  

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

## Missing
- Tunnel PMTUD
- Tracking of FIB state for tunnel state
- IPv6 extension headers (Tunnel encapsulation limit option)

# Locator/ID Separation Protocol (LISP) Control Plane
Maintainer: Florin Coras <fcoras@cisco.com>  
State: production  

LISP control plane implementation

- ITR, ETR and RTR mode of operation
- Multitenancy
- Multihoming
- Source/dest map-cache lookups
- RLOC-probing
- Support for Ethernet, IPv4, IPv6 and NSH EIDs (payloads)
- Map-resolver failover algorithm

# Locator/ID Separation Protocol Generic Protocol Extension (LISP-GPE)
Maintainer: Florin Coras <fcoras@cisco.com>  
State: production  

LISP-GPE implementation

- ITR, ETR and RTR modes
- Support for Ethernet, IPv4, IPv6 and NSH EIDs (payloads)
- Source/dest forwarding
- IPv4 and IPv6 RLOCs

# Link Layer Discovery Protocol (LLDP)
Maintainer: Klement Sekera <ksekera@cisco.com>  
State: production  

Link Layer Discovery Protocol implementation

- link layer discovery protocol implementation

# Session Layer
Maintainer: Florin Coras <fcoras@cisco.com>  
State: production  

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

# Transmission Control Protocol (TCP)
Maintainer: Florin Coras <fcoras@cisco.com>  
State: production  

High speed and scale TCP implementation

- Core functionality (RFC793, RFC5681, RFC6691)
- Extensions for high performance (RFC7323)
- Congestion control extensions (RFC3465, RFC8312)
- Loss recovery extensions (RFC2018, RFC3042, RFC6582, RFC6675, RFC6937)
- Detection and prevention of spurious retransmits (RFC3522)
- Defending spoofing and flooding attacks (RFC6528)
- Partly implemented features (RFC1122, RFC4898, RFC5961)
- Delivery rate estimation (draft-cheng-iccrg-delivery-rate-estimation)

# Transport Layer Security (TLS)
Maintainers: Florin Coras <fcoras@cisco.com>, Ping Yu <ping.yu@intel.com>  
State: production  

TLS protocol implementation that consists of a set of engines that act as wrappers for existing TLS implementations, e.g., OpenSSL, Picotls and MbedTLS, and a framework that integrates the engines into VPP's host stack

- Framework that supports pluggable TLS engines
- OpenSSL, Picotls and MbedTLS engines

# User Datagram Protocol (UDP)
Maintainer: Florin Coras <fcoras@cisco.com>  
State: production  

UDP implementation

- host stack integration via session layer
- standalone per port dispatcher for tunneling protocols

