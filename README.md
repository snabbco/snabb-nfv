## Snabb NFV for OpenStack Icehouse

Snabb NFV is a software distribution for Network Functions
Virtualization based on OpenStack Icehouse and related projects.

Snabb NFV requires extended versions of its major software
components. This repository uses submodules to track the exact
versions that are recommended. Each submodule points to a version that
is based on a recent stable release and adds patches related to Snabb
NFV.

### Summary of component versions and patches

```
neutron version 2014.1.2 with patches:
22e1795 Added 'zone' type driver for ML2
e135b47 Extended ML2 mechanism_snabb to perform 'zone' assignment.
0eadd6a Snabb NFV mechanism driver for ML2

nova version 2014.1.2 with patches:
243045c libvirt: enable hugepages config from flavor mem_hugepages
8be8fef Add VIF_VHOSTUSER
a4791b6 Define constants for the VIF model types
a92c015 libvirt: add support for memory backing parameters

libvirt version v1.2.8 with patches:
ab44fa2 qemu: create qemu/vhostuser folder
940dbda qemu: hugepage support not using NUMA not dependent on NUMA topology

qemu version v2.1.0 with patches:
04b3216 Increase hard-coded Virtio vring size from 256 to 8192.
f41eecc vhost-user: add multi queue support
1904434 Add G_IO_HUP handler for socket chardev

snabbswitch version v2014.09.1 with patches:

```
