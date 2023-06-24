# A Chassis extension to install and configure GMP on your Chassis server
class gmp (
	$config,
	$path        = '/vagrant/extensions/gmp',
	$php_version  = $config[php]
) {
	# Install the gmp package
	if ( ! empty( $config[disabled_extensions] ) and 'chassis/gmp' in $config[disabled_extensions] ) {
		$package = absent
		$file    = absent
	} else {
		$package = latest
		$file    = 'present'
	}

	package { 'php-gmp':
		ensure  => $package,
		require => Package["php${php_version}-fpm", "php${php_version}-cli"],
	}

	if versioncmp( $php_version, '5.6') < 0 {
		package { 'php5-gmp':
			ensure  => $package,
			require => Package['php5-cli', 'php5-fpm']
		}
	} else {
		package { "php${php_version}-gmp":
			ensure  => $package,
			require => Package["php${php_version}-fpm", "php${php_version}-cli"],
			notify  => Service["php${php_version}-fpm"],
		}
	}
}
