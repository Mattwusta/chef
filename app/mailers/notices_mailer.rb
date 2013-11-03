class NoticesMailer < ActionMailer::Base
   default :from => "noreply@chef29.com"
  default :to => "matthew.wu328@gmail.com"

  def new_buy(buy)
    @buy = buy
    mail(:subject  => "[Chef29 New Buy] #{buy.name} ")
    mail(:body => "[下單客人] #{buy.name} [客人Email] #{buy.email} [客人Number] #{buy.number} [菜單＋數量] #{buy.item} [收貨地址] #{buy.address} [收貨時間] #{buy.time} [特別需求] #{buy.special}")
   
   
  end

end