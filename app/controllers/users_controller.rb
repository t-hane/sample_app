class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit(:name)
    @user.save!
    redirect_to users_path
  rescue ActiveRecord::RecordInvalid
    render action: :index
  end

  def edit
    @user = User.find params[:id]
  end
  
  def update
    @user = User.find params[:id]
    @user.attributes = params.require(:user).permit(:name)
    @user.save!
    redirect_to users_path
  rescue ActiveRecord::RecordInvalid
    render action: :edit
  end
end
