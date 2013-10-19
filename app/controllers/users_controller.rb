class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pins = @user.pins.page(params[:page]).per_page(100)
    @pins = @user.pins.where(user_id: @user.id).order("created_at DESC")
    @pins = @pins.paginate(:page => params[:page], :per_page => 30)
   end
 end


def pin_params
   params.require(:user).permit(:description, :image)
end
