class NotificationMailer < ActionMailer::Base
  default from: "no-reply@cr-nomsterapp.com"

  def comment_added
    mail(to: "colinrubbert@gmail.com",
          subject: "A comment has been added to your place")
  end

end
