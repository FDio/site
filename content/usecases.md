+++
title = "Use Cases for FD.io"
subtitle = """
#### FD.io is a networking technology that can used to build a galaxy of Network \
Functions. Today it is being used by a several major communication network \
providers and equipment manufactures to build world-class network functions.

"""
+++



## <img src="/img/usecases/universalcpe.png" width=5% >  Routers/Universal CPE etc. 

FD.io VPP supports entry hardware options from number of hardware vendors for building Customer Premise Equipment devices. FD.io based commercial options are available from vendors such as Netgate with TNSR, Cisco with the ASR 9000 and Carrier Grade Services Engine, PANTHEON.tech with StoneWork Enterprise, and many more.

Commercial implementations integrate Strong Swan for IKE.

The implementations are accelerated with [DPDK](http://www.dpdk.org) Cryptodev for whole platform crypto.

**Featuring:**

	| Data Plane          | Control Plane   |
	|---------------------|-----------------|
	| L2 Switch           | Netconf/Yang    |
	| VLAN/ Q-inQ         | BGP             |
	| L3 Router           | IKEv2           |
	| NAT                 |                 |
	| ACL (mac, ip, port) |                 |

## <img src="/img/usecases/broadbandnetworkgateway.png" width=5% > Broadband Network Gateway

FD.io VPP has a growing list of network traffic management and security features to support gateway uses cases such as Broadband Network Gateway.

**Featuring:**

	| Data Plane               | Control Plane   |
	|--------------------------|-----------------|
    | L2 Switch                | Netconf/Yang    |
    | L3 Router                | BGP             |
    | Classification           |                 |
    | hQoS                     |                 |
    | ACL                      |                 |
    | TM (Policing, Metering)  |                 |

## <img src="/img/usecases/cloudloadbalancer.png" width=5% > Cloud Load Balancer   
FD.io VPP has a rich set of plugin’s to enhance its capabilities. Cloud load-balancing is just one of number of feature enhancing plugins available to the end user.

For example: Google Maglev Implementation,  Consistent Hashing, Stateful and stateless load balancing, Kube-proxy integration.

**Featuring:**

	| Data Plane               | Control Plane   |
	|--------------------------|-----------------|
    | Bonding                  | K8s Kube-Proxy  |
    | VLAN / Q-in-Q            |                 |
    | NAT                      |                 |
    | ACL (blacklist)          |                 |
    | TM (policing, metering)  |                 |
    | L4 Load Balancer         |                 |

## <img src="/img/usecases/intrusionpreventionsystem.png" width=5% >  Intrusion Prevention System

FD.io VPP has four different Access Control List technologies; ranging from the simple IP-address whitelisting (called COP) to the sophisticated FD.io VPP Classifiers.

**Featuring:**

	| Data Plane               | Control Plane   |
	|--------------------------|-----------------|
    | L2 Switch                | Netconf/Yang    |
    | L3 Router                | BGP             |
    | Classification           |                 |
    | NAT (mac, ip, port)      |                 |
    | ACL (mac, ip, port)      |                 |

## Deployment Models

**FD.io is being used in Virtual Network Functions (VNFs) and for Cloud Native Functions (CNFs) for example:**


### <img src="/img/logos/openstack02.png" width=10% > Virtual Network Functions
**Openstack support is provided with [Networking VPP](https://opendev.org/x/networking-vpp) or [Open Daylight](https://www.opendaylight.org) as your OpenStack Neutron ML2 Driver.**

<!-- original "networking VPP" link: https://github.com/openstack/networking-vpp -->

### <img src="/img/usecases/docker.png" width=10% > Cloud Network Functions

**Kubernetes and Container support is provided as a CNI extension with [Calico/VPP](https://docs.projectcalico.org/getting-started/kubernetes/vpp/getting-started)**

You can use it by configure the Calico CNI to use VPP as its dataplane.

<!-- Previous projects addressing this were [Ligato](https://ligato.io/) and [Contiv/VPP](https://github.com/contiv/vpp) as your Kubernetes CNI providers. -->


