class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  def authorize_admin
    redirect_to root_path, alert: 'Access Denied' unless current_user.admin?
  end

  def authorize_dover
    redirect_to root_path, alert: 'Access Denied' unless current_user.dover? || current_user.admin?
  end 

  def authorize_trappe
    redirect_to root_path, alert: 'Access Denied' unless current_user.trappe? || current_user.admin?
  end

  def authorize_cambridge
    redirect_to root_path, alert: 'Access Denied' unless current_user.cambridge? || current_user.admin?
  end

end
