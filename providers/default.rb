action :check do
	@data = ruby_block "check" do
		block do
			@data=getData()
			#@data.each {|result| puts result}
		end
		action :nothing
	end
	@data.run_action(:run)
end

action :add do
	
end