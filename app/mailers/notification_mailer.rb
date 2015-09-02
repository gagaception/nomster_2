class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added
  	 mail(to: "aziz_veyron@inbox.ru",
         subject: "A comment has been added to your place")
  end
end
