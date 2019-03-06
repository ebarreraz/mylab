#!/bin/bash -x 
qemu-img create -f raw /var/lib/libvirt/images/ceph-2-disk3.qcow2 40G
qemu-img create -f raw /var/lib/libvirt/images/ceph-2-disk2.qcow2 40G
qemu-img create -f raw /var/lib/libvirt/images/ceph-1-disk2.qcow2 40G
qemu-img create -f raw /var/lib/libvirt/images/ceph-1-disk3.qcow2 40G
qemu-img create -f raw /var/lib/libvirt/images/ceph-0-disk3.qcow2 40G
qemu-img create -f raw /var/lib/libvirt/images/ceph-0-disk2.qcow2 40G

