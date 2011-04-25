class Coordinator < ActiveRecord::Base
	belongs_to :county
	belongs_to :state

	def name
		fullname = self.firstname + " " + self.lastname + " from " + self.city
		return fullname
	end
end
