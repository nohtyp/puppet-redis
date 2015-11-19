class redis::install inherits params {

  package { $::redis::redis_package:
    ensure    => installed,
  }
}
