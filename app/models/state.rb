class State < ActiveRecord::Base
	has_many :counties
	has_many :coordinators

	accepts_nested_attributes_for :counties, :coordinators
end
