# a manifest that kills a process named killmenow
exec { 'pkill_process':
  command => '/bin/pkill -SIGTERM killmenow',
  onlyif  => '/bin/ps -ef | /bin/grep killmenow | /bin/grep -v grep',
}
