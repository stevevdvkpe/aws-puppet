# puppetmaster
node ip-10-0-20-129 {
	# check for puppet configuration updates every five minutes
    	cron { "puppet update":
		command => "cd /etc/puppet && git pull -q origin master",
		user    => root,
	    	minute 	=> "*/5",
	}
}

# web1
node ip-10-0-20-180 {
	include apache
}

# web2
node ip-10-0-20-193 {
	include apache
}
