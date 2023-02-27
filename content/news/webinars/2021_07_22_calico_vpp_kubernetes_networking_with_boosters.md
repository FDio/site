+++
title = "Calico/VPP : Kubernetes networking with boosters"

date = "2021-07-22"
time_slot = "09:00am - 08:00am PST"
type = "webinar"
youtubeurl = "https://www.youtube.com/watch?v=G67K28f5htg"
pdfurl =  "https://drive.google.com/file/d/1pZh2BJlc5ZZYR6lnfH1KHQWKU4FgLti6/view?usp=sharing"
ppturl = "https://drive.google.com/file/d/1c9KwZQFS98DX4q7JfXfjgi52P5nMgYtz/view?usp=sharing"

previewimage = "/img/webinars/video_2021_07_22_calico_vpp_kubernetes_networking_with_boosters.jpg"

+++

Kubernetes has become the de facto solution when it comes to container networking, providing rich functionalities and abstractions. 
But some classes of workloads put a huge performance burden on these implementations. Think big data, storage, analytics,
5G, virtual network functions, requiring encryption at a 40Gbps line rate, or multiple million of packets per second. 
Typically applications that are used to having dedicated NICs and physical hardware. In order to address this, we took 
the best of both worlds, combining Calico, the popular cloud native Kubernetes network plugin, with VPP, a very fast
and scalable userspace packet processing software. In this talk we will cover how we provide line rate networking
for those applications while keeping kubernetes benefits, and what super powers this enables us to bring to the pods.

{{% btn txt="Register" link="https://zoom.platform.linuxfoundation.org/webinar/register?project=lfn&id=AEltd2Ny5jXgn%2FUmQ%2FueI3%2BZXYuUOnbQN%2BFBn1eov9oSozG8JrdqqQ%3D%3D&logo=lfn.svg&zoomID=95927465619" %}}

### Speakers

{{< speaker name="Chris Tomkins - Developer Advocate @ Project Calico/Tigera" twitter="TomkinsDa" linkedin="cdtomkins" img="/img/webinars/calico_vpp/chris_tomkins.jpeg">}}
Chris is a developer advocate at Tigera, where he champions user needs to support Project Calico’s users and 
contributor community. He has worked in networking since 2000. After realising that a per-device CLI is not a 
scalable solution for a large environment, he took an early interest in infrastructure-as-code approaches and 
large-scale automation and continues to have a special interest in pursuing technologies in these areas.
{{< /speaker >}}

{{< speaker name="Nathan Skrzypczak - Software Engineer @ Cisco" linkedin="sknat" twitter="skrnat" github="sknat" img="/img/webinars/calico_vpp/nathan_skrzypczak.jpeg">}}
Nathan is a software engineering at Cisco focusing on container networking & cloud app performance. After spending 
time deploying & scaling web apps he took interest in converting his love for script based infras into cloud native 
approaches, and now contributes to the building blocks of line rate container networking. He's a maintainer of the 
Calico/VPP integration, and of VPP's QUIC stack.
{{< /speaker >}}
