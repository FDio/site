+++
title = "Network Function Abstraction: A delicate question of (CPU) affinity ?"

date = "2024-02-03"
time_slot = "12:55pm - 1:20pm CET"
type = "webinar"

youtubeurl = "https://video.fosdem.org/2024/ub5230/fosdem-2024-3331-network-function-abstraction-a-delicate-question-of-cpu-affinity-.mp4"
ppturl =  "https://archive.fosdem.org/2024/events/attachments/fosdem-2024-3331-network-function-abstraction-a-delicate-question-of-cpu-affinity-/slides/22190/FOSDEM_2024_NF_Abstraction_Kw4XJQi.pptx"

previewimage = "/img/webinars/video_2024_02_03_network_function_abstraction_a_delicate_question_of_cpu_affinity.jpg"

+++

Software-defined networking workloads are deployed higher and higher up the stack, in virtual machines, now containers, to leverage all the perks of these abstractions. But this comes at a cost, as being further away from the silicon makes reaching high throughputs more difficult.

In this talk, we will cover CPU resources management, including challenges related to CPU affinity and cgroups, and strategies to obtain better performance in network workloads at different levels of abstraction.

For demonstration purposes, we will discuss network workloads deployed on Calico-VPP powered Kubernetes clusters, and the performance gains observed using CPU placement strategies.

### Speakers

{{< speaker name="Hadi Rayan Al-Sandid" img="/img/speakers/hadi_rayan_al_sandid.jpg">}}
Hello! I am a software engineer at Cisco, who joined the VPP (Vector Packet Processing) team in October 2022. Currently, I am mainly contributing to VPP, which is a very fast and scalable userspace packet processing software running in Linux.
{{< /speaker >}}
