#!/bin/bash
# Use the first arg as the id for the guest
sudo virt-install \
	--connect qemu:///system \
	--console pty,target_type=serial \
	--name centosstream-9-"${1}" \
	--cpu host \
	--graphics none \
	--ram 2048 \
	--disk bus=virtio,path=/var/lib/libvirt/images/centosstream-9-"${1}".qcow2 \
	--vcpus 2 \
	--os-variant centos-stream9 \
	--network network=default,model=virtio \
	--noautoconsole \
	--noreboot \
	--import
