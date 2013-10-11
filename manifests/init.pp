class mail {
  package {
    'mailx':
      ensure => present;
    'sendmail':
      ensure => present;
  }
  service {
    'sendmail':
      ensure => running,
      enable => true,
      hasrestart => true,
      hasstatus => true;
  }
}
