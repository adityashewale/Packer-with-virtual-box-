#!/bin/bash


############### seeting up hostname #############################
hostnamectl set-hostname  beegfs-server


echo "Creating Beegfs repo file:"
#####creating repo file and copy into /etc/yum.repos##########

cat <<EOT > b.repo
[beegfs]
name=BeeGFS 7.2 (rhel7)
# If you have an active BeeGFS support contract, use the alternative URL below
# to retrieve early updates. Replace username/password with your account for
# the BeeGFS customer login area.
#baseurl=https://username:password@www.beegfs.io/login/release/beegfs_7.2/dists/rhel8
baseurl=https://www.beegfs.io/release/beegfs_7.2/dists/rhel7
gpgkey=https://www.beegfs.io/release/beegfs_7.2/gpg/RPM-GPG-KEY-beegfs
gpgcheck=0
enabled=1
EOT

cp b.repo /etc/yum.repos.d/
yum clean all 
yum repolist 
######################### installing  beegfs and required packges #############################
yum -y install beegfs-mgmtd kernel-devel-$(uname -r) beegfs-meta libbeegfs-ib beegfs-storage beegfs-client beegfs-helperd beegfs-utils 
# Install dependencies
#yum install -y gcc make  bzip2 kernel-devel-$(uname -r)

touch abc aditya

