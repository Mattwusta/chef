class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def show
    @user = User.find(params[:id])
    @pins = @user.pins.page(params[:page]).per_page(100)
    @pins = @user.pins.where(user_id: @user.id).order("created_at DESC")
    @pins = @pins.paginate(:page => params[:page], :per_page => 30)
    @orderlists = @user.orderlists.page(params[:page]).per_page(100)
    @orderlists = @user.orderlists.where(user_id: @user.id).order("created_at DESC")
   
  end
 end

 def userorder
    @user = User.find(params[:id])
    @pins = @user.pins.page(params[:page]).per_page(100)
    @pins = @user.pins.where(user_id: @user.id).order("created_at DESC")
    @pins = @pins.paginate(:page => params[:page], :per_page => 30)
    @orderlists = @user.orderlists.page(params[:page]).per_page(100)
    @orderlists = @user.orderlists.where(user_id: @user.id).order("created_at DESC")
   
  end

def userorders
    @user = User.find(params[:id])
    @pins = @user.pins.page(params[:page]).per_page(100)
    @pins = @user.pins.where(user_id: @user.id).order("created_at DESC")
    @pins = @pins.paginate(:page => params[:page], :per_page => 30)
    @orderlists = @user.orderlists.page(params[:page]).per_page(100)
    @orderlists = @user.orderlists.where(user_id: @user.id).order("created_at DESC")
   
  end


def pin_params
   params.require(:user).permit(:description, :image)
end
