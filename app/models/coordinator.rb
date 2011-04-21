class Coordinator < ActiveRecord::Base
	belongs_to :county
	belongs_to :state

	def name
		fullname = self.firstname + " " + self.lastname + " from " + self.city + " " + self.state.abreviation
		return fullname
	end
end
