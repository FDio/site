+++
title = "VPP TLS Plugin: Performance Enhancement With User Space Processing & Pipeline Support"

date = "2025-02-02"
time_slot = "12:50pm - 13:05pm CET"
type = "webinar"
youtubeurl = "https://fosdem.org/2025/schedule/event/fosdem-2025-5565-vpp-tls-plugin-enhancing-performance-with-asynchronous-operations/"
ppturl =  "https://fosdem.org/2025/events/attachments/fosdem-2025-5565-vpp-tls-plugin-enhancing-performance-with-asynchronous-operations/slides/236339/FOSDEM_V_cJCPRSD.pptx"

previewimage = "/img/webinars/video_2025_02_02_vpp_tls_plugin_performance_enhancement_with_user_space_processing_pipeline_support.jpg"

+++

The FD.io Vector Packet Processing (VPP) TLS plugin enhances performance through asynchronous, non-blocking operations.

By utilizing DPDK user space crypto drivers and the OpenSSL Engine framework, TLS crypto operations are asynchronously submitted to hardware, ensuring that the entire TLS processing occurs in user space. With EVP pipeline support, the DPDK crypto driver allows enqueueing of multiple TLS packets for encryption/decryption, leveraging DPDK burst APIs. Enhanced queue management further boosts efficiency.

## Key Features:

Engine Registration: Supports multiple engines with specific algorithms for asynchronous operations. User Space Driver: Uses DPDK and OpenSSL Engine for hardware-offloaded, user space TLS processing. Event Handling: Employs an event-driven model for dynamic event management. Polling Mechanism: Monitors asynchronous operations with dedicated polling functions. Callback Functions: Handles completion of TLS operations efficiently. Queue Management: Separates handshake requests from read/write events, reducing contention and improving throughput and latency.

## Advantages:

Reduced Contention: Separate queues for different operations enhance smooth processing. Increased Throughput: Parallel processing of operations boosts the number of TLS operations per second. Lower Latency: Faster processing of time-sensitive handshake operations.

These improvements make the VPP TLS plugin a robust solution for high-throughput, low-latency network environments.

### Speakers

{{< speaker name="Varun Rapelly" img="/img/speakers/varun_rapelly.jpg">}}
Working as a Principal Software Engineer at Marvell Technology Inc, Hyderabad, India.

I've robust background in networking, software development, and performance optimization, with extensive experience across various platforms and technologies.
{{< /speaker >}}

{{< speaker name="Venkata Ravichandra Mynidi" img="/img/speakers/venkata_ravichandra_mynidi.jpg">}}
Working as a Sr Principal Engineer at Marvell India with a total experience of 14 years in Networking and Security. Specialized in network security, application security, secure boot and 5G transport stack. Topics of interest are data plane optimizations, accelerated computing, enabling hardware to use new open standards.
{{< /speaker >}}
