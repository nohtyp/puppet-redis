class redis::install inherits params {

  package { $::redis::redis_pkgs:
    ensure    => installed,
  }
}
