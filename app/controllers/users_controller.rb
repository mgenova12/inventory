class UsersController < ApplicationController
  before_filter :authorize_admin

  def index 
    @users = User.all
  end

  def create    
    @user = User.new(sign_up_params)

    if @user.save
      redirect_to '/users'
    else 
      redirect_to '/users/new'
    end
  end

  def edit
    @user = User.find(params[:id])
    
  end

  def destroy
    user = User.find(params[:id])
      
    user.destroy
    redirect_to '/users'
  end


  private

  def sign_up_params
    params.require(:user).permit(:email, :role, :password, :password_confirmation)
  end


end
