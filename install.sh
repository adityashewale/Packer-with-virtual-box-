#!/bin/bash


############### seeting up hostname #############################
hostnamectl set-hostname  beegfs-server


echo "Creating Beegfs repo file:"
#####creating repo file and copy into /etc/yum.repos##########
 wget -O /etc/yum.repos.d/beegfs_rhel8.repo https://www.beegfs.io/release/beegfs_7.4.0/dists/beegfs-rhel8.repo
cp b.repo /etc/yum.repos.d/
yum clean all 
yum repolist 
######################### installing  beegfs and required packges #############################
yum -y install kernel-devel-$(uname -r)  beegfs-client 
/etc/init.d/beegfs-client rebuild 
# Install dependencies
#yum install -y gcc make  bzip2 kernel-devel-$(uname -r)


