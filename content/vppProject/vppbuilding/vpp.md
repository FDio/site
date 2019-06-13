+++
weight = "1"
title = "The Vector Packet Processor (VPP)"
type = "vppdocs"
summary = "VPP is the core technology behind the FD.io project."

btntxt="Developing with VPP "

# The first part of these strings are displayed in the dropdown.
# The second is the url
latest = "Latest Release (1904), https://fdio-sandbox.netlify.com/docs/vpp/v1904/gettingstarted/developers"
versions = ["Master, /docs/vpp/master/gettingstarted/developers",
	 "1901, https://fdio-sandbox.netlify.com/docs/vpp/v1901/gettingstarted/developers"]

+++

# Dowloading/Building VPP

The following describes how to download and build VPP. For more on developing with
VPP click on the button at the bottom of the page.

## Set up Proxies

Depending on the environment you are operating in, proxies may need to be set. 
Run these proxy commands to specify the *proxy-server-name* and corresponding *port-number*:

``` console
$ export http_proxy=http://<proxy-server-name>.com:<port-number>
$ export https_proxy=https://<proxy-server-name>.com:<port-number>
```

## Get the VPP Sources

To get the VPP sources that are used to create the build, run the following commands:

``` console
$ git clone https://gerrit.fd.io/r/vpp
$ cd vpp
```

## Build VPP Dependencies

Run the following **make** command to install the dependencies for FD.io VPP. 

If the download hangs at any point, then you may need to 
:ref:`set up proxies <setupproxies>` for the download to work.

``` console
$ make install-dep
```

## Build VPP (Release Version)

Use the following **make** command below to build the release version of VPP.

``` console
$ make build-release
```

## Running VPP

After building the VPP binaries, you now have several images built. Run these VPP
with the follwoing

``` console
$ sudo bash
# make run
```
