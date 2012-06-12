class mysql_mmm::monitor inherits mysql_mmm {
  package {"$mysql_mmm::params::monitor_package":
    ensure => present,
  }

  service {"$mysql_mmm::params::monitor_service":
    ensure => running,
    require => [ Package["$mysql_mmm::params::monitor_package"], File["$mysql_mmm::params::monitor_configfile"] ]
  }

  file {"$mysql_mmm::params::monitor_configfile":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 640,
    content => template("mysql_mmm/mmm_mon.conf.erb"),
    require => File[$mysql_mmm::params::common_configfile]
  }

}
