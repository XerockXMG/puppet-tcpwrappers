# Class: tcpwrappers::params
#
# This class defines default parameters used by the main module
# class tcpwrappers
#
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to tcpwrappers class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class tcpwrappers::params {

  $allow_file = $facts['os']['name'] ? {
    default => '/etc/hosts.allow',
  }

  $allow_source   = '' # lint:ignore:empty_string_assignment
  $allow_template = '' # lint:ignore:empty_string_assignment

  $deny_file = $facts['os']['name'] ? {
    default => '/etc/hosts.deny',
  }

  $deny_template = '' # lint:ignore:empty_string_assignment
  $deny_source   = '' # lint:ignore:empty_string_assignment

  # Application related parameters

  $package = $facts['os']['name'] ? {
    /(?i:Ubuntu|Debian|Mint)/ => 'libwrap0',
    default                   => 'setup',
  }

  $config_dir = $facts['os']['name'] ? {
    default => '/etc',
  }

  $config_file_mode = $facts['os']['name'] ? {
    default => '0644',
  }

  $config_file_owner = $facts['os']['name'] ? {
    default => 'root',
  }

  $config_file_group = $facts['os']['name'] ? {
    default => 'root',
  }

  # General Settings
  $my_class = '' # lint:ignore:empty_string_assignment
  $options  = '' # lint:ignore:empty_string_assignment
  $version  = 'present'
  $audit_only = false
  $noops = false
}
