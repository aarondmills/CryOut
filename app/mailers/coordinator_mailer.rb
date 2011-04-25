class CoordinatorMailer < ActionMailer::Base
  default :from => "aaron@jailbreakcreative.com"

	def registration_confirmation(coordinator)
		@coordinator = coordinator
		mail(:to => coordinator.email, :subject => "Cry Out America")
	end
end
