+++
title = "Guide to talking to applications from FD.io VPP"
author = "Ray Kinsella"
link = "https://ashroe.eu/2022/06/01/talk-to-applications-from-vpp.html"
linkText = "Read More About talking to applications from FD.io VPP"

date = "2022-06-01"
+++

FD.io TSC member [Ray Kinsella](https://fd.io/getinvolved/tsc/) has been
[blogging](https://ashroe.eu) recently on [FD.io VPP](https://fd.io). His
[latest post](https://ashroe.eu/2022/06/01/talk-to-applications-from-vpp.html)
describes how different kinds of applications can punt packets to or receive
packets from FD.io VPP. Different applications will have different requirements,
and operate at different levels of the
[OSI model](https://en.wikipedia.org/wiki/OSI_model). FD.io VPP is therefore
equipped to support a number of different APIs to support these varying
requirements. Some applications may require a simple raw packet interface,
others will require stateful protocol support behind the BSD Sockets API. 

FD.io VPP always has a solution.
