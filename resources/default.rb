actions :check, :add
default_action :check

attribute :host_name, :kind_of => String, :default => "root"
attribute :slaves_list, :kind_of => Array, :default => nil