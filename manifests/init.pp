class mysql_mmm {
  require mysql_mmm::params
  include concat::setup

  concat {"$mysql_mmm::params::common_configfile":
    owner => "root",
    group => "root",
    mode => 640,
  }
  concat::fragment {"mmm_common_header":
    target => $mysql_mmm::params::common_configfile,
    content => template("mysql_mmm/mmm_common_header.erb"),
    order => 01,
  }
  concat::fragment {"mmm_common_writers":
    target => $mysql_mmm::params::common_configfile,
    content => template("mysql_mmm/mmm_common_writers.erb"),
    order => 21,
  }
  concat::fragment {"mmm_common_readers":
    target => $mysql_mmm::params::common_configfile,
    content => template("mysql_mmm/mmm_common_readers.erb"),
    order => 22,
  }

  Member <<| |>> 
  define member ($agent_hostname = $title , $agent_ip, $mmm_mode = 'slave', $mmm_peer = 'false') {
    concat::fragment {"mmm_member_$agent_hostname":
      target => $mysql_mmm::params::common_configfile,
      content => template("mysql_mmm/mmm_common_host.erb"),
      order => 10,
    }
  }
}
