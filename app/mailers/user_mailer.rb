class UserMailer < ActionMailer::Base
  default from: "collier-blocmetrics@heroku.com"

  def event_owner(app_owner)
    mail(to: app_owner, subject: "Your email does not match our records")
  end
end
