class County < ActiveRecord::Base
	belongs_to :state
	has_one :coordinator
	accepts_nested_attributes_for :coordinator
	scope :returncounty, lambda {|state| where(:state_id => state)}
end
