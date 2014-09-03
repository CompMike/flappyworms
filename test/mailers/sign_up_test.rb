require 'test_helper'

class SignUpTest < ActionMailer::TestCase
  test "newsignup" do
    mail = SignUp.newsignup
    assert_equal "Newsignup", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
