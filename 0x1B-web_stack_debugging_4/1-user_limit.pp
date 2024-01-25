# Fix problem of high amount files opened
exec { 'change_config':
  command => "sudo /bin/sed -i 's/nofile 4/nofile 5000/g; s/nofile 5/nofile 6000/g' /etc/security/limits.conf",
}
