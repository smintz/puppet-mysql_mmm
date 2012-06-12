Puppet module: mysql-mmm

# Written by Shahar Mintz
# http://github.com/smintz

Licence: Apache 2.0

DESCRIPTION:
This module installs and manages mysql-mmm.

All the variables used in this module are defined in the mysql_mmm::params class
(File: $MODULEPATH/mysql_mmm/manifests/params.pp). Here you can:
- Set default settings and filtering module's specific Users variables


MODULE'S SPECIFIC USER VARIABLES:
 $writers = ['db1', 'db2']                  # These machines will be set as masters (Read/Write servers) - limited to 2 servers
 $writer_ip ['192.168.100.250']             # The floating IP of the Writer, your mysql clients should use this host for writing
 $readers = $writers.concat(['db3', 'db4']) # Additional Read-Only DB servers
 $readers_ips = ['192.168.100.251', '192.168.100.252', '192.168.100.253'] # IPs for DB servers with read status

USAGE:
# Standard Classes 
include mysql-mmm::agent              # Install and run mysql-mmm agent
include mysql-mmm::monitor            # Install and run mysql-mmm agent


OPERATING SYSTEMS SUPPORT (Planned, Development, Testing, Production):
RedHat/Centos 5 : Testing
RedHat/Centos 6 : Testing
