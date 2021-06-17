server '172.31.2.192', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/kanasakakoki/.ssh/id_rsa'
