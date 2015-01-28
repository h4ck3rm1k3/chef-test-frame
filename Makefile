export EDITOR:=emacs 

knife-init:	
	~/experiments/chef/bin/knife configure --initial --config ~/experiments/chef-root/config_dir/knife.rb 

knife-create :
	~/experiments/chef/bin/knife client create client1 --config ~/experiments/chef-root/config_dir/knife.rb  --file ~/experiments/chef-root/config_dir/knife1.key.pem

cookbook_create:
	 ~/experiments/chef/bin/knife cookbook create TEST1  --config ~/experiments/chef-root/config_dir/knife.rb

knife :
	~/experiments/chef/bin/knife environment list  --config ~/experiments/chef-root/config_dir/knife.rb

test:
	~/experiments/chef/bin/chef-client --local --log_level debug --config `pwd`/config_dir/config.rb  
#> log.txt 2>&1

solo :
	chef-solo --config `pwd`/config_dir/config.rb  -N elasticsearch-test-chef-solo -j node.json
