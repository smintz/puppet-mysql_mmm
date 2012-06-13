Puppet module: mysql-mmm
========================

Written by Shahar Mintz
http://github.com/smintz

Licence: Apache 2.0

Description:
------------
This module installs and manages `mysql-mmm`.

All the variables used in this module are defined in the `mysql_mmm::params` class
(File: `$MODULEPATH/mysql_mmm/manifests/params.pp`). Here you can:
- Set default settings and filtering module's specific Users variables


Module's specific user Variavles:
---------------------------------

+ `$writers = ['db1', 'db2']` - These machines will be set as masters (Read/Write servers) - limited to 2 servers
+ `$writer_ip ['192.168.100.250']` - The floating IP of the Writer, your mysql clients should use this host for writing
+ `$readers = $writers.concat(['db3', 'db4'])` - Additional Read-Only DB servers
+ `$readers_ips = ['192.168.100.251', '192.168.100.252', '192.168.100.253']` - IPs for DB servers with read status

USAGE:
------
+ `include mysql-mmm::agent` - Install and run mysql-mmm agent
+ `include mysql-mmm::monitor` - Install and run mysql-mmm agent

Dependencies:
-------------
+ concat module


OPERATING SYSTEMS SUPPORT (Planned, Development, Testing, Production):
----------------------------------------------------------------------
+ RedHat/Centos 5 : Testing
+ RedHat/Centos 6 : Testing

Copyright and license
---------------------

Copyright 2012 Shahar Mintz.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this work except in compliance with the License.
You may obtain a copy of the License in the LICENSE file, or at:

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
