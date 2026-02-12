+++
title = "FOSDEM 2026: FD.io talks from the Network DevRoom"
author = "FD.io Community"
location = "FOSDEM'26 Network DevRoom"
date = "2026-01-31"
+++

FOSDEM 2026’s Network DevRoom featured multiple sessions on FD.io projects,
Vector Packet Processing (VPP) spanning hardware traffic management offload,
reproducible benchmarking with CSIT, and scaling high-performance IPsec for
secure network functions.

## Harnessing Hardware for High-Performance Traffic Management in FD.io/VPP

Speakers: Venkata Ravichandra Mynidi, Alok Mishra

This session focuses on using dedicated NIC/SmartNIC/DPU capabilities for traffic
management while keeping VPP’s forwarding graph flexible. It introduces a VPP
traffic-management (TM) offload framework with a vendor-neutral API intended to
program and manage hardware-based QoS features such as hierarchical scheduling,
dual-rate shaping (RFC 2698), and policing.

Link: https://fosdem.org/2026/schedule/event/TWNGYR-vpp-hardware-traffic-management/

## Terabits without Tall Tales: Reproducible Packet & Session Benchmarks in FD.io (CSIT + VPP)

Speaker: Maciek Konstantynowicz

This talk presents the FD.io CSIT approach to making performance results reproducible
via “benchmarks-as-code”: open test definitions, repeatable environments, and an automated
pipeline. It covers how CSIT searches for conditional throughput targets such as NDR/PDR
using MLRsearch, and how the scope expands from pure packet forwarding into session benchmarks
and security-relevant scenarios (e.g., QUIC/TLS offload, NAT, IPsec, ACLs, SRv6, and
NGFW/proxy test cases).

Link: https://fosdem.org/2026/schedule/event/7JHLQQ-terabits-packets-sessions-security-fdio-csit-vpp/

## Scaling Secure Network Functions: High-Performance IPsec with FD.io VPP for VNFs and CNFs

Speaker: Benoît Ganne

This session is a deep dive into the VPP IPsec stack for secure network functions. It covers
IPsec architecture and benchmarking, and discusses scaling and performance considerations
when deploying IPsec in virtualized and cloud-native form factors (VNFs and CNFs).

Link: https://fosdem.org/2026/schedule/event/Y9EZ9G-scaling_secure_network_functions/
