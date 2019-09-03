+++
weight = "2"
+++

# <img src="/img/universalcpe.png" width=5% >  Universal CPE 

**FD.io VPP supports entry hardware options from number of hardware vendors for building Customer Premise Equipment devices. FD.io based commercial options are available from vendors such as Netgate**

**Commercial implementations integrate Strong Swan for IKE. e.g. Netgate TSNR.**

**The implementations are accelerated with [DPDK](http://www.dpdk.org) Cryptodev for whole platform crypto.**

### The Implementation
<table border = "3" width = "30%"> 
    <thead>
      <tr>
      <th>Data Plane</th>
      <th>Control Plane </th>
      </tr>
    </thead>
    <tbody bgcolor = "lightgray">
      <tr><td> L2 Switch</td><td>Netconf/Yang</td></tr>
      <tr><td> VLAN/ Q-inQ</td><td>BGP</td></tr>
      <tr><td> L3 Router</td><td>TR-069</td></tr>
      <tr><td> NAT</td><td>IKEv2</td></tr>
      <tr><td> ACL (mac, ip, port)</td></tr>
      <tr><td> IPSEC </td></tr>
    </tbody>
</table>
