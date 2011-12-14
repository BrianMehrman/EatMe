class UserMailer < ActionMailer::Base
  default from: "support@eatme.inventiongarden.com"

  def welcome_email(user)
    @user = user
    @url = "http://www.eatme.inventiongarden.com"
  
    mail(:to => user.email, :subject => "Welcome to Eat Me Healthy")
  end

  def new_tracking_email(user,track)
    @user = user
    @url = "http://www.eatme.inventiongarden.com"

    @track = track


    mail(:to => user.email, :subject => "New Track added")
  end
end
