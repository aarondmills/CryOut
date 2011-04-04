class County < ActiveRecord::Base
	belongs_to :state
	has_one :user
end
