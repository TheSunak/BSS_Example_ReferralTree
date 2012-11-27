class User < ActiveRecord::Base
	validates_presence_of :first_last_name
end
