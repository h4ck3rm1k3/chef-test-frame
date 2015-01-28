#

client_key  '/home/mdupont/experiments/chef-root/config_dir/test_id_rsa'

root = File.absolute_path(File.dirname(__FILE__))

Chef::Log.debug("Root #{root}.")

cookbook_path [ root + "/cookbooks" ]


Chef::Log.debug("cookbook_path #{cookbook_path}.")

log_level                :debug
log_location             STDOUT
