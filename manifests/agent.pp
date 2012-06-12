class mysql_mmm::agent inherits mysql_mmm {
  package {"$mysql_mmm::params::agent_package":
    ensure => present,
  }

  service {"$mysql_mmm::params::agent_service":
    ensure => running,
    require => [ Package["$mysql_mmm::params::agent_package"], File["$mysql_mmm::params::agent_configfile"] ]
  }

  file {"$mysql_mmm::params::agent_configfile":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 640,
    content => template("mysql_mmm/mmm_agent.conf.erb"),
    require => File[$mysql_mmm::params::common_configfile]
  }

#    if ${mysql_mmm::params::writers}.include?($hostname) {
#      $mmm_mode = 'writer',
#      $mmm_peer = $mysql_mmm::params::writers.delete($hostname),
#    } else {
#      $mmm_mode = 'slave',
#      $mmm_peer = "false",
#    }
  @@mysql_mmm::member {"$hostname":
    agent_ip => $ipaddress,
#    mmm_mode => $mmm_node,
#    mmm_peer => $mmm_peer,
  }
}
