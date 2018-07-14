class UsersController < ApplicationController
  before_filter :authorize_admin

  def index 

  end

  def create    
    @user = User.new(sign_up_params)

    if @user.save
      redirect_to '/users'
    else 
      redirect_to '/user/new'
    end
  end


  private

  # Notice the name of the method
  def sign_up_params
    params.require(:user).permit(:email, :role, :password, :password_confirmation)
  end


end
