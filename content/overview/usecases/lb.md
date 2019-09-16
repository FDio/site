+++
weight = "4"
+++

## <img src="/img/cloudloadbalancer.png" width=5% > Cloud Load Balancer   
**FD.io VPP has a rich set of plugin’s to enhance its capabilities. Cloud load-balancing is just one of number of feature enhancing plugins available to the end user.**

**For example: Google Maglev Implementation,  Consistent Hashing, Stateful and stateless load balancing, Kube-proxy integration.**

**Featuring:**
<table border = "3" width = "30%" style="margin-left: 15px" style="margin-right: 15px"> 
    <thead>
      <tr>
      <th>Data Plane</th>
      <th>Control Plane </th>
      </tr>
    </thead>
    <tbody bgcolor = "lightgray">
      <tr><td>Bonding</td><td rowspan = "2"></td></tr>
      <tr><td> VLAN / Q-in-Q</td></tr>
      <tr><td> NAT</td><td rowspan = "2">K8s Kube-Proxy</td></tr>
      <tr><td> ACL (blacklist)</td></tr>
      <tr><td> TM (policing, metering)</td></tr>
      <tr><td> L4 Load Balancer </td></tr>
    </tbody>
</table>
