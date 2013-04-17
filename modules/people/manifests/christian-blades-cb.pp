class people::christian_blades_cb {
    include projects::all

    $username = "cblades"
    $home = "/Users/${::luser}"
 
    if !defined(File["${home}/Workspace/Projects"]) {
        file { "${home}/Workspace/Projects":
           ensure => directory,
           owner => $username
           recurse => true
           mode => 0700
        }
    }
}
