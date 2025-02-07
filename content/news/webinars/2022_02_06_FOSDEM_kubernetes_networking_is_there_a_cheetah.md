+++
title = "Kubernetes networking : is there a cheetah within your Calico?"

date = "2022-02-06"
time_slot = "4:30pm - 5:00pm CET"
type = "webinar"
youtubeurl = "https://fosdem.org/2022/schedule/event/kubernetes_networking_is_there_a_cheetah"
pdfurl =  "https://fosdem.org/2022/schedule/event/kubernetes_networking_is_there_a_cheetah/attachments/slides/5080/export/events/attachments/kubernetes_networking_is_there_a_cheetah/slides/5080/FOSDEM_2022_Calico_VPP_is_there_a_cheetah_within_your_Calico.pdf"

previewimage = "/img/webinars/video_2022_02_06_FOSDEM_kubernetes_networking_is_there_a_cheetah.jpg"
+++

## Even faster kubernetes clusters with Calico, VPP and memif

Kubernetes is great, containers are lightweight & disposable, networking is simple yet powerful. But when it comes to network oriented applications, oh that can be slow !

That's how the Calico/VPP integration first came up, as a way to address performance bottlenecks, making VPP's performance the motor of Calico's functionalities in Kubernetes. It speeds up container networking, but also allows us to expose even faster functionalities directly to the applications. So with this in place, how can we go even faster, while still preserving the Kubernetes abstractions ?

We'll present how applications can leverage userspace interfaces, what this allows regarding network performance & additional functionalities and how the Calico/VPP integration makes this happen under the hood.


{{% btn txt="Event link" link="https://fosdem.org/2022/schedule/event/kubernetes_networking_is_there_a_cheetah/" %}}

### Speakers

{{< speaker name="Chris Tomkins - Developer Advocate @ Project Calico/Tigera" twitter="TomkinsDa" linkedin="cdtomkins" img="/img/speakers/chris_tomkins.jpg">}}
Chris is a developer advocate at Project Calico/Tigera, where he champions user needs to support Project Calico’s users and contributor community. 
He has worked in networking since 2000. After realising that a per-device CLI is not a scalable solution for a large environment, 
he took an early interest in infrastructure-as-code approaches and large-scale automation and continues to have a special interest 
in pursuing technologies in these areas.
{{< /speaker >}}

{{< speaker name="Nathan Skrzypczak - Software Engineer @ Cisco" linkedin="sknat" twitter="skrnat" github="sknat" img="/img/speakers/nathan_skrzypczak.jpg">}}
Nathan is a software engineering at Cisco focusing on container networking & cloud app performance. After spending 
time deploying & scaling web apps he took interest in converting his love for script based infras into cloud native 
approaches, and now contributes to the building blocks of line rate container networking. He's a maintainer of the 
Calico/VPP integration, and of VPP's QUIC stack.
{{< /speaker >}}
