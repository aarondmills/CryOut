class State < ActiveRecord::Base
	has_many :counties
	has_many :coordinators
	has_one :organiser

	accepts_nested_attributes_for :counties, :coordinators, :organiser
end
