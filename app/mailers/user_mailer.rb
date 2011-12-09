class UserMailer < ActionMailer::Base
  default from: "support@eatme.inventiongarden.com"

  def welcome_email(user)
    @user = user
    @url = "http://eatme.herokuapp.com"

    mail(:to => user.email, :subject => "Welcome to Eat Me Healthy")
  end
end
