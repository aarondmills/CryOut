class CoordinatorMailer < ActionMailer::Base
  default :from => "lwood@awakeningamerica.us"

	def registration_confirmation(coordinator)
		@coordinator = coordinator
		mail(:to => coordinator.email, :subject => "Cry Out America")
	end
end
