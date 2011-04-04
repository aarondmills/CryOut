class State < ActiveRecord::Base
	has_many :counties
	has_many :users

	accepts_nested_attributes_for :counties, :users
end
