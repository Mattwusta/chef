class AlertController < ApplicationController

  def new
    @ordernew = Ordernew.new
  end

  def create
    @ordernew  = Ordernew.new(params[:ordernew])
    
    if @ordernew .valid?
      Notice2sMailer.new_ordernew(@ordernew).deliver
      redirect_to(root_path, :notice => "取消訂單通知已送出")
    else
      flash.now.alert = "請填入所有退款資料"
      render :new
    end
  end

end