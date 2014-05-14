class WineordersMailer < ActionMailer::Base
   default :from => "noreply@chef29.com"
  default :to => "chef29manage@gmail.com"

  def new_wineorder(wineorder)
    @wineorder = wineorder 
    mail(:subject  => "[Chef29 酒類預訂] #{wineorder.name} ")
    mail(:body => "[下單客人] #{wineorder.name} [客人Email] #{wineorder.email} [客人電話] #{wineorder.phone} [酒編號] #{wineorder.wineid} [預訂數量] #{wineorder.qty} [預訂取貨地址] #{wineorder.pickuplocation} [預訂取貨時間] #{wineorder.pickupdate} [與其他訂單一起取貨] #{wineorder.otherorder} [特別需求] #{wineorder.special}")
   
   
  end

end

