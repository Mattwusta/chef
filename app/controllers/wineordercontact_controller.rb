class WineordercontactController < ApplicationController

  def new
    @wineorder = Wineorder.new
  end

  def create
   @wineorder = Wineorder.new(params[:wineorder])
    
    if @wineorder .valid?
      WineordersMailer.new_wineorder(@wineorder).deliver
      redirect_to(root_path, :notice => "您的酒類預訂單已經成功送出，稍後將有專員與您聯絡確認。")
    else
      flash.now.alert = "請填入您的酒類預訂單"
      render :new
    end
  end

end