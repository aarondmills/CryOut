class CoordinatorMailer < ActionMailer::Base
  default :from => "lwood@awakeningamerica.us"

	def registration_confirmation(coordinator)
		@coordinator = coordinator
		mail(:to => coordinator.email, :subject => "Cry Out America")
	end

	def registration_notification(coordinator)
		@coordinator = coordinator
		mail(:to => 'lwood@awakeningamerica.us', :subject => "Coordinator Signup Notification: #{@coordinator.firstname} #{@coordinator.lastname}", :from => "noreply@awakeningamerica.us")
end
