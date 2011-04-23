class County < ActiveRecord::Base
	belongs_to :state
	has_one :coordinator



	scope :returncounty, lambda {|state| where(:state_id => state)}

	
end
