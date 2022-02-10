+++
title = "Keep appetite for the stats, it costs nothing"

date = "2022-02-06"
time_slot = "2:20pm - 2:40pm CET"
type = "webinar"
youtubeurl = "https://ftp.osuosl.org/pub/fosdem/2022/D.network/keep_appetite_for_the_stats.webm"
ppturl =  "https://fosdem.org/2022/schedule/event/keep_appetite_for_the_stats/attachments/slides/4991/export/events/attachments/keep_appetite_for_the_stats/slides/4991/Fosdem_VPP_stats.pptx"
+++

## Presentation of the statistics consumption model in VPP from the costless low-level design to their exploitation in userspace

VPP (aka Vector Packet Processing) is a fast network stack running in Linux userspace. It is designed to handle packets with high performance, which makes gathering statistics efficiently a must have.

The model that has been chosen in VPP to provide up to date statistics is built upon shared memory and optimistic locking. The counters are updated in this shared memory at a rather low cost by the data plane and can be read out at almost any time by all the consumers. We will first describe this model in more details.

The consumption of these stats may take various forms depending on the use case and the application needs. That's why we have developed different high-level components to access them:

1) A filesystem in userspace: thanks to [go-fuse](https://github.com/hanwen/go-fuse), we can mount a filesystem ordering statistics in folders and files, in a similar fashion to '/proc' in Linux

2) A [Prometheus](https://prometheus.io/) agent: applied to [Calico/VPP](https://github.com/calico-vpp), a new dataplane for [Calico](https://www.tigera.io/project-calico/) - the popular cloud native [Kubernetes](https://kubernetes.io/) network plugin - based on VPP. Prometheus is integrated as a monitoring tool in order to export our statistics in the form of real-time metrics collected from targets. Metrics come from our pod interfaces statistics, and targets are [Calico/VPP](https://github.com/calico-vpp) agents running on our [Kubernetes](https://kubernetes.io/) cluster nodes.

During the presentation, you will have a quick demo of these components.


{{% btn txt="Event link" link="https://fosdem.org/2022/schedule/event/keep_appetite_for_the_stats/" %}}

### Speakers

{{< speaker name="Arthur de Kerhor - Software Engineer @ Cisco" img="/img/webinars/calico_vpp/arthur_de_kerhor.jpg">}}
Arthur is a software engineer who has been working at Cisco since February 2021 in fast cloud-native data plane applications. He is currently involved in the open source project VPP (Vector Packet Processing), which is a fast and scalable network stack running in Linux userspace.
{{< /speaker >}}

{{< speaker name="Hedi Bouattour - Software Engineer @ Cisco" img="/img/webinars/calico_vpp/hedi_bouattour.jpg">}}
Hedi is a software engineer at Cisco, and since May 2021, a member of VPP (Vector Packet Processing) team, which is a very fast and scalable userspace packet processing software running in Linux. He is currently contributing in the Calico/VPP integration project, where VPP is combined with Calico, the popular cloud native Kubernetes network plugin.
{{< /speaker >}}
