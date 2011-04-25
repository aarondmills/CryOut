class Coordinator < ActiveRecord::Base
	belongs_to :county
	belongs_to :state

	def name
		return self.firstname
	end
end
