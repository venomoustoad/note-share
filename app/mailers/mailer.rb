class Mailer < ActionMailer::Base
  default from: 'no-reply@note-share.com'
  def invitation(invitation, signup_url)
    mail(to: invitation.recipient_email, subject: "Invitation private beta", :body => signup_url)   
    invitation.update_attribute(:sent_at, Time.now)
  end
end
