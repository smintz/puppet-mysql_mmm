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
}
