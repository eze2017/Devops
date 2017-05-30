# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ezekiel"
client_key               "#{current_dir}/ezekiel.pem"
chef_server_url          "https://srujanp1.mylabserver.com/organizations/stark"
cookbook_path            ["#{current_dir}/../cookbooks"]