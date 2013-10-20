class Notice2sMailer < ActionMailer::Base
   default :from => "noreply@gurus.com.tw"
  default :to => "matthew.wu328@gmail.com"

  def new_ordernew(ordernew)
    @ordernew = ordernew
    mail(:subject => "[Chef29 Ordernew] #{ordernew.subject}" )
    mail(:body => "[餐點新訂單] [聯絡人] ＃{ordernew.name} [聯絡EMAIL] #{ordernew.email} [聯絡電話] #{ordernew.number} [購買餐點] #{ordernew.item} [收貨地址] #{ordernew.address} [收貨時間] #{ordernew.time} [內容] #{ordernew.special}" )
  	
  end

end