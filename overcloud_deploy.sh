#!/bin/bash -x

ironic node-list

echo "Wiping ceph disk or ceph-ansible will not add them to the node":
echo
ssh root@192.168.1.99 /root/wipe_ceph_disk.sh
echo
echo "Done..."
echo "Deploying.."
echo
time openstack overcloud deploy --templates -r templates/roles_data.yaml -n templates/network_data.yaml -e templates/environments/network-environment.yaml -e templates/environments/network-isolation.yaml -e templates/node-info.yaml -e /usr/share/openstack-tripleo-heat-templates/environments/disable-telemetry.yaml  -e templates/overcloud_images.yaml    -e /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-ansible.yaml  -e templates/storage-environment.yaml  -e  /usr/share/openstack-tripleo-heat-templates/environments/low-memory-usage.yaml -e /usr/share/openstack-tripleo-heat-templates/environments/debug.yaml -e /usr/share/openstack-tripleo-heat-templates/environments/neutron-ovs-dvr.yaml --ntp-server pool.ntp.org 

