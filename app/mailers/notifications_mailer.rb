class NotificationsMailer < ActionMailer::Base
   default :from => "noreply@chef29.com"
  default :to => "chef29manage@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Chef29 Contact] #{message.subject}" )
    mail(:body => "[聯絡主題] #{message.subject} [聯絡人] #{message.name} [聯絡EMAIL] #{message.email} [內容] #{message.body}" )
  	
  end

end