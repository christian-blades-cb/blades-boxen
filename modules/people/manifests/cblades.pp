class people::christian-blades-cb {
    include projects::all

    $username = "cblades"
    $home = "/Users/${username}"
 
    if !defined(File["${home}/Workspace/Projects"]) {
        file { "${home}/Workspace/Projects":
           ensure => directory,
           owner => $username
           recurse => true
           mode => 0700
        }
    }
}