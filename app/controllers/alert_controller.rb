class AlertController < ApplicationController

  def new
    @ordernew = Ordernew.new
  end

  def create
    @ordernew  = Ordernew.new(params[:ordernew])
    
    if @ordernew .valid?
      Notice2sMailer.new_ordernew(@ordernew).deliver
      redirect_to(root_path, :notice => "Ordernew was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

end