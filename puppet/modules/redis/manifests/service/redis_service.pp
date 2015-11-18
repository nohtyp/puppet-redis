class redis::service::redis_service inherits params {

  service {'Redis Service':
    ensure     => running,
    name       => $::redis::redis_service,
    hasstatus  => true,
    hasrestart => true,
    require    => Package[$::redis::redis_pkgs],
    subscribe  => File['Redis Service config'],
  }
}
