class Chef
  class Provider
		def getData()
			Chef::Log.debug("Log level: debug")
			@slaves_params = Hash.new
			collect_data = partial_search(:node, 'role:jenkins_slave',
				:keys => {
					'fqdn'=>[ 'fqdn' ],
					'ip'   => [ 'ipaddress' ]
				}).each do |result|
					@slaves_params = {
						:fqdn => result['fqdn'],
						:ip => result['ip']
				}
			node.default[:jenkins][:slaves_list].push(@slaves_params)
			end
		node[:jenkins][:slaves_list].each {|result| puts result}
		return node[:jenkins][:slaves_list]
		end
	end
end
