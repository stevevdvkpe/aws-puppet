# puppetmaster
node 'ip-10-0-20-82' {
	# check for puppet configuration updates every five minutes
	message => "running on puppet master"
    	cron { "puppet update":
		command => "cd /etc/puppet && git pull -q origin master",
		user    => root,
	    	minute 	=> "*/5",
	}
}

# web1
node 'ip-10-0-20-19' {
	include apache
}

# web2
node 'ip-10-0-20-50' {
	include apache
}
