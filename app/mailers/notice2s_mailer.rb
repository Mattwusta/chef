class Notice2sMailer < ActionMailer::Base
   default :from => "noreply@chef29.com"
  default :to => "matthew.wu328@gmail.com"

  def new_ordernew(ordernew)
    @ordernew = ordernew
    mail(:subject => "[Chef29 Cancel Order] #{ordernew.subject}" )
    mail(:body => "[聯絡Name] #{ordernew.name} [聯絡EMAIL] #{ordernew.email} [聯絡電話] #{ordernew.number} [退款銀行] #{ordernew.bank} [銀行帳號] #{ordernew.account} [訂購單編號] #{ordernew.orderid} [備註] #{ordernew.special}" )
  	
  end

end