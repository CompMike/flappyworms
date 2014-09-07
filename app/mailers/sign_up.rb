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
    mail(to: @email, subject: "You've signed up")
  end
  def signupnotice(email)
    @all = Email.where.not(email: nil).all
		@email = email['email']
    mail to: "compmike@gmail.com"


  end
end
