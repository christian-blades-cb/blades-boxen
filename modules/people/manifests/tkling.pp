class people::tkling {
    include projects::all

    $home = "/Users/${::luser}"

    if !defined(File["/${home}/dev/projects"]) {
        file {"${home}/dev/projects":
	    ensure => directory,
	    owner => $::luser,
	    recurse => true,
	    mode => 0700
	}
    }
}
