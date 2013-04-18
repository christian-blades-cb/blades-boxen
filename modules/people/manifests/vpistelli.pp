class people::vpistelli {
  include projects::platform_soft

  if !defined(File["/${home}/dev/projects"]) {
     file {"${home}/dev":
	  ensure => directory,
	  owner => $::luser,
	  mode => 0700
	}
   }
}
