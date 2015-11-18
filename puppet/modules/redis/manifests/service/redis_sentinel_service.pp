class redis::service::redis_sentinel_service inherits params {

  service {'Redis Sentinel Service':
    ensure     => running,
    name       => $::redis::redis_sentinel_service,
    hasstatus  => true,
    hasrestart => true,
    require    => Package[$::redis::redis_pkgs],
    subscribe  => File['Redis Sentinel config'],
  }
}