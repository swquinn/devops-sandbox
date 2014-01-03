# Copyright 2012 Extesla Digital Entertainment, Ltd.. All rights reserved.
#
# It is illegal to use, reproduce or distribute any part of this
# Intellectual Property without prior written authorization from
# Extesla Digital Entertainment, Ltd..
#

class { "apache": }

apache::vhost { "lorecall.localhost":

	## This is the default virtual host
	ensure        => "present",
	default_vhost => true,

	## Virtual host properties
	port          => "80",
	docroot       => "/srv/vagrant/data/web",
	serveradmin   => "admin@lorecall.com",
	servername    => "lorecall.localhost",
	serveraliases => ["lorecall.localhost"],
	docroot_owner => "root",
	docroot_group => "root",
	directories   => [{
		path           => "/srv/vagrant/data",
		options        => ["Indexes", "FollowSymLinks", "Includes", "ExecCGI"],
		allow_override => "All",
		order          => ["Allow", "Deny"],
		allow          => "from all",
		auht_require   => "all granted",
	}],
	
	## Logging
	# access_log_file   => "/srv/vagrant/logs/apache_access.log", 
	# error_log_file    => "/srv/vagrant/logs/apache_error.log",  ## Doesn't work? Seems to think it should find error log in: /var/log/apache2/srv/vagrant/logs/*
	# error_log_format => "[%t] [%l] [pid %P] thread-%T %F: %E: [client %a] %M",
}

class { "::mongodb::globals":

	## Use the 10gen/MongoDB software repository
	manage_package_repo => true,

}->
class { "::mongodb::server":

	## Ensure that the service is installed and started
	ensure         => true,
	
	## Configure paths (database, logs)
	dbpath         => "/srv/mongodb/data/db",
	logpath        => "/srv/mongodb/logs/mongo.log",
	
	## Log verbosity
	verbose        => true,
	verbositylevel => "vvvvv",
}