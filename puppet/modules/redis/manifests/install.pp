class redis::install inherits redis {

  package { $::redis::redis_package:
    ensure    => installed,
  }
}
