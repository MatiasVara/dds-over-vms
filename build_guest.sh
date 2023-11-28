#!/bin/bash
BASE_PATH="${HOME}"
SSH_PUB_KEY=${BASE_PATH}/.ssh/id_rsa.pub

virt-builder centosstream-9 \
	--format qcow2 --size 15G -o centosstream-9.qcow2 \
	--hostname guest-0 \
	--install "cmake,gcc-c++,make,git,wget" \
	--ssh-inject=root:file:${SSH_PUB_KEY} \
	--selinux-relabel --root-password=password:redhat \
	--upload ./install_dds.sh:/root/install_dds.sh \
	--firstboot ./install_dds.sh
