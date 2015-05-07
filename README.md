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
neutron version 2014.1.3-79-g4076e7c with patches:
5459731 mech snabb: add a list of "used" IPs for each zone definition
1acb2a5 mech_snabb: store profile:bindings in vif_details
df337ee mech snabb: config format is JSON
6e36291 mech snabb: Neutron configuration validation
4490faa mech snabb: Track available IPv4 addresses more exactly
5848884 mech snabb: prefer matching IP subnets
1a750a0 mechanism snabb: fix a bug with choosing least overloaded port
377030c unit tests: fix _choose_port tests
7a0ed37 mechanism_snabb: IPv4 support
ebbfd68 unit tests: add bind_port tests
7d8bce7 Added 'zone' type driver for ML2
d5ca643 Extended ML2 mechanism_snabb to perform 'zone' assignment.
43aa22e Snabb NFV mechanism driver for ML2

nova version 2014.1.4-3-gcc86ef5 with patches:
b45de64 libvirt: enable hugepages config from flavor mem_hugepages
7b16b30 Add VIF_VHOSTUSER
8386674 Define constants for the VIF model types
f617169 libvirt: add support for memory backing parameters

libvirt version v1.2.8 with patches:
ab44fa2 qemu: create qemu/vhostuser folder
940dbda qemu: hugepage support not using NUMA not dependent on NUMA topology

qemu version v2.1.0 with patches:
d57042c vhost-user: Send VHOST_RESET_OWNER on vhost stop
dc5aed0 vhost-user: fix VIRTIO_NET_F_MRG_RXBUF negotiation
f393aea Add G_IO_HUP handler for socket chardev

snabbswitch version v2015.05-6-g40ec58b with patches:

```
