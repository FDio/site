+++
weight = "1"
title = "Building VPP"
subtitle = "Downloading and Building VPP"
+++

## How to Dowload and Build VPP

The following describes how to download and build VPP. For more on developing with
VPP click on the button at the bottom of the page.

### Set up Proxies

Depending on the environment you are operating in, proxies may need to be set. 
Run these proxy commands to specify the *proxy-server-name* and corresponding *port-number*:

``` console
$ export http_proxy=http://<proxy-server-name>.com:<port-number>
$ export https_proxy=https://<proxy-server-name>.com:<port-number>
```

### Get the VPP Sources

To get the VPP sources that are used to create the build, run the following commands:

``` console
$ git clone https://gerrit.fd.io/r/vpp
$ cd vpp
```

### Build VPP Dependencies

Run the following **make** command to install the dependencies for FD.io VPP. 

If the download hangs at any point, then you may need to 
`set up proxies <setupproxies>` for the download to work.

``` console
$ make install-dep
```

### Build VPP (Release Version)

Use the following **make** command below to build the release version of VPP.

``` console
$ make build-release
```

### Running VPP

After building the VPP binaries, you now have several images built. Run these VPP
with the following

``` console
$ sudo bash
# make run
```

{{% btn-dropdown "Developing with VPP" %}}
{{% btn-dropelem txt="Latest Release" link="/docs/vpp/master/developer/build-run-debug/index.html" %}}
{{% btn-dropdiv %}}
{{% btn-dropelem txt="version 22.06" link="/docs/vpp/v2206/developer/build-run-debug/index.html" %}}
{{% btn-dropelem txt="version 22.02" link="/docs/vpp/v2202/developer/build-run-debug/index.html" %}}
{{%/ btn-dropdown %}}
