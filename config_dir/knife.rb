log_level                :debug
log_location             STDOUT
node_name                'mdupont'
client_key               '~/experiments/chef-root/config_dir/test_id_rsa'
#'/mnt/data/home/mdupont/experiments/chef-root/config_dir/mdupont.pem'
validation_client_name   'chef-validator'
validation_key           '/mnt/data/home/mdupont/experiments/chef-root/config_dir/chef-validator.pem'
chef_server_url          'https://localhost.localdomain:443'
syntax_check_cache_path  '/mnt/data/home/mdupont/experiments/chef-root/config_dir/syntax_check_cache'


root = File.absolute_path(File.dirname(__FILE__))
Chef::Log.debug("Root #{root}.")

cookbook_path [ root + "/cookbooks" ]
Chef::Log.debug("cookbook_path #{cookbook_path}.")
