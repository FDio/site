+++
title = "HICN"
type = "latestnews"
+++

<img src="/img/hicn.png" width=25% >
## Introducing Hybrid Information-Centric Networking (hICN), a new FD.io Project

### By Luca Muscariello, Principal Engineer, Cisco Systems & hICN Project Technical Lead

[Hybrid Information-Centric Networking (hICN)] (https://wiki.fd.io/view/HICN) is a new way of thinking about networking that we are bringing to FD.io. With hICN,  communications are centered around the “what” instead of the “where,” and the core network principles are pivoted toward this core idea.

Rethinking networking around data instead of locations provides several advantages. Location-independent communications natively provides mobility, multi-homing, multi-path and, in general, many-to-many interactions.  hICN does not secure the end-points but the data itself and provides a higher level of anonymization, so consumers can be assured that their information is safe. For many applications, traffic can scale with the amount of information exchanged, and not with the number of connected endpoints as when using unicast transport.

hICN also brings information-centric principles into IPv6. For example, hICN- enabled routers do not need to be deployed everywhere in the network, but only where it matters. IP management and control plane toolkits can be used as they are, you don’t need to learn new ones and you gain an additional advantage in obtaining responsive, yet stable traffic engineering.

Additionally, applications can take advantage of a new set of name-based transport sockets that fit to different application requirements. The project already provides reliable transport that can achieve several Gbps in software per single transaction and unreliable transport used to support multi-party audio/video conferencing. The project integrates TLS and DTLS support and currently works to integrate experimental group key agreement protocols to support private group communications.

While the project is use case-agnostic, the development is made to support some key industrial applications such as 5G, Internet of Things (IoT), Mobile Edge Computing and Cloud native applications.

More details on FD.io’s  hICN project will be available onsite  at Mobile World Congress, February 25-28th in Barcelona, at the Cisco booth Hall 3 Stand 3E30. If you aren’t going to make it to Mobile World Congress, you can also come and talk to us at  [IETF 104](https://www.ietf.org/how/meetings/104/?gclid=EAIaIQobChMIj5LT_Za84AIVUhx9Ch01xg_7EAAYASAAEgJ2FPD_BwE) in Prague, March 23-29 and [KubeCon/CloudNativeCon](https://events.linuxfoundation.org/events/kubecon-cloudnativecon-europe-2019/) in Barcelona, May 20-23. Stay tuned for other chances to see us throughout the year!  