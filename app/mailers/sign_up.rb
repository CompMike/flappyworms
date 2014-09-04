class SignUp < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sign_up.newsignup.subject
  #
  def newsignup(email)
    @greeting = "Hi"
    @email = email['email']
    mail to: @email
    mail(to: "sshimmy@aol.com", subject: "You've signed up")
  end
  def signupnotice(email)
		@email = email['email']
    mail to: "sshimmy@aol.com"
  end
end
