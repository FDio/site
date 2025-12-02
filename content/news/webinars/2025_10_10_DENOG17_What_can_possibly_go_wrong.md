+++
title = "DENOG17 - What can possibly go wrong? Stories of peculiarities of modern server hardware"

date = "2025-10-10"
type = "webinar"
youtubeurl = "https://www.youtube.com/watch?v=3zFiCRMh70E"

previewimage = "/img/webinars/video_2025_10_10_DENOG17_What_can_possibly_go_wrong.jpg"
+++

After discussing building a 1 Tbps/1 Gpps load generator on commodity x86-64 hardware, one of the most common follow-up topics was the reasoning behind some of the decisions. And here I've realised that it is not commonly understood that modern systems are more complex than classic multi-socket NUMA systems, and that if you don't consider some of their peculiarities, you won't achieve the expected performance. In this talk, I want to explore what happens when you break those assumptions and how you can identify them. All examples would be based on the assumption that you are using Cisco T-Rex for load generation and fd.io VPP as a target load.

Vladimir Smirnov

https://pretalx.com/denog17/talk/VJJ9RC/
