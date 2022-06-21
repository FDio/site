+++
title = "Using HPC instructions to accelerate FD.io"
author = "Ray Kinsella"
link = "https://ashroe.eu/2022/05/24/using-hpc-instructions-for-networking.html"
linkText = "Read More About using HPC instructions to accelerate FD.io."

date = "2022-05-24"
+++

FD.io TSC member [Ray Kinsella](https://fd.io/getinvolved/tsc/) has been
[blogging](https://ashroe.eu) recently on [FD.io VPP](https://fd.io). His
[latest
post](https://ashroe.eu/2022/05/24/using-hpc-instructions-for-networking.html)
describes how FD.io VPP is accelerated using [SIMD
instructions](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data).
Single instruction, multiple data (SIMD) instructions are commonly used to
improve software efficiency by performing an operation on multiple buffers
(data) in parallel. This can improve 'instructions per cycle' (IPC) a common
metric that describes the efficiency of software. SIMD instructions are most
commonly used to accelerate [High Performance Computing
(HPC)](https://en.wikipedia.org/wiki/HPC) workloads, however FD.io re-purposes
these to accelerate networking workloads.
