class role::myredis {
include profile::repos
include profile::keystore
include profile::firewall
include stdlib

Class['profile::repos'] ->
Class['profile::firewall'] ->
Class['profile::keystore']
}
