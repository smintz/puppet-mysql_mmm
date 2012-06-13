class mysql_mmm::params {
  

  $agent_package = "mysql-mmm-agent"
  $monitor_package = "mysql-mmm-monitor"
  $tools_package = "mysql-mmm-tools"

  $configbase = "/etc/mysql-mmm"
  $common_configfile = "${configbase}/mmm_common.conf"
  $agent_configfile = "${configbase}/mmm_agent.conf"
  $monitor_configfile = "${configbase}/mmm_mon.conf"

  $agent_service = "mysql-mmm-agent"
  $monitor_service = "mysql-mmm-monitor"

  $writers = ["db1", "vm6"]
  $writer_ip =  [ "192.168.99.250" ]
  $readers = $writers
  $readers_ips = [ "192.168.99.251" ]

  $agent_user = "mmm_agent"
  $agent_password = "agent_password"

  $replication_user = "replication"
  $replication_password = "replication_password"

  $monitor_user = "mmm_monitor"
  $monitor_password = "monitor_password"
}
