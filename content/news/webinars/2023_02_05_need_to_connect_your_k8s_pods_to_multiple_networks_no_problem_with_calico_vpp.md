+++
title = "Need to connect your k8s pods to multiple networks? No problem with calico/vpp"

date = "2023-02-05"
time_slot = "4:15pm - 4:45pm CET"
type = "webinar"
youtubeurl = "https://fosdem.org/2023/schedule/event/network_pods_to_multiple_networks/"
ppturl =  "https://fosdem.org/2023/schedule/event/network_pods_to_multiple_networks/attachments/slides/5887/export/events/attachments/network_pods_to_multiple_networks/slides/5887/FOSDEM_2023_Need_to_connect_your_k8s_pods_to_multiple_networks.pdf"

previewimage = "/img/webinars/video_2023_02_05_need_to_connect_your_k8s_pods_to_multiple_networks_no_problem_with_calico_vpp.jpg"

+++

Kubernetes is a great solution for hosting highly available endpoint applications, but network functions can still prove challenging. VPN gateways are notably tricky, with overlay and underlay conflicts making their deployment an interesting dance. Performance is also a challenging topic when speaking about scale, most importantly when common optimizations like GSO don't really apply.

Leveraging the Calico CNI with a VPP dataplane mixed with multus, allowed us exposing multiple k8s managed interfaces to pods, and thus building complex network functions that still benefit from k8s constructs (HA, service discovery, ...). In the end building an highly available Wireguard gateway gets as easy as building any other application. And it can even leverage accelerated interfaces and cryptographic engines, to reach multiple Gbps without hassle.

Hoping this architecture could benefit Kubernetes at large, we started drafting a KEP, proposing to upstream the concept of multiple isolated networks, and standardizing their interaction with existing k8s resources.


{{% btn txt="Event link" link="https://fosdem.org/2023/schedule/event/network_pods_to_multiple_networks/" %}}

### Speakers

{{< speaker name="Nathan Skrzypczak - Software Engineer @ Cisco" linkedin="sknat" twitter="skrnat" github="sknat" img="/img/speakers/nathan_skrzypczak.jpg">}}
Nathan is a software engineering at Cisco focusing on container networking & cloud app performance. After spending 
time deploying & scaling web apps he took interest in converting his love for script based infras into cloud native 
approaches, and now contributes to the building blocks of line rate container networking. He's a maintainer of the 
Calico/VPP integration, and of VPP's QUIC stack.
{{< /speaker >}}
