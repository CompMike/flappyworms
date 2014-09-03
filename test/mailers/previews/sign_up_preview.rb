# Preview all emails at http://localhost:3000/rails/mailers/sign_up
class SignUpPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sign_up/newsignup
  def newsignup
    SignUp.newsignup
  end

end
