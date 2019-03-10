#!/bin/bash -x

openstack baremetal node set compute-4 --property capabilities='node:compute-4,boot_option:local'
openstack baremetal node set compute-3 --property capabilities='node:compute-3,boot_option:local'
openstack baremetal node set compute-2 --property capabilities='node:compute-2,boot_option:local'
openstack baremetal node set compute-1 --property capabilities='node:compute-1,boot_option:local'
openstack baremetal node set compute-0 --property capabilities='node:compute-0,boot_option:local'

openstack baremetal node set controller-0 --property capabilities='node:controller-0,boot_option:local'
openstack baremetal node set controller-1 --property capabilities='node:controller-1,boot_option:local'
openstack baremetal node set controller-2 --property capabilities='node:controller-2,boot_option:local'

openstack baremetal node set ceph-0 --property capabilities='node:cephstorage-0,boot_option:local'
openstack baremetal node set ceph-1 --property capabilities='node:cephstorage-1,boot_option:local'
openstack baremetal node set ceph-2 --property capabilities='node:cephstorage-2,boot_option:local'
