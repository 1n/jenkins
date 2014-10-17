#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Chef::Recipe.send(:include, DataCollecor)

jenkins "check" do
	action :check
end

#	collect_data = partial_search(:node, 'hostname:epbyminw*',
#		:keys => {
#			'fqdn'=>[ 'fqdn' ]
#			}).each do |result|
#	  puts result['fqdn']
#	end