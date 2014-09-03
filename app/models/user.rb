class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  #defines the VALID_EMAIL_REGEX variable for the below validation

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
   uniqueness: { case_sensitive: false }
  #makes sure the user email is present, matches the exmaple@mail.com 
  #(VALID_EMAIL_REGEX method), and gives the email uniqueness by make it 
  #non-casesensitive.
end
