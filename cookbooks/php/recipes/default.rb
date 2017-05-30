#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "php" do
	action:install
end


cookbook_file "/etc/php.ini" do
 	source "php.ini"
	mode "0644"
end

execute "rm /etc/httpd/conf.d/welcome.conf" do

	only_if do
		File.exist?("/etc/httpd/conf.d/welcome.conf")
	end
end
 execute "rm /etc/httpd/conf.d/README" do
	only_if do
		File.exists?("/etc/httpd/conf.d/README")

	end

end
		
