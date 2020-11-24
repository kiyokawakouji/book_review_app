class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
 # deviseの画面にいったら、parameterをモデルに渡すアクションを実行する
 before_action :configure_permitted_parameters, if: :devise_controller?
 # prepend_before_action :require_no_authentication, only: [:new, :create, :cancel]
 
helper_method :current_user, :logged_in?

 def current_user
  @current_user ||= User.find_by(id: session[:user_id])
  if session[:user_id]
    
  end
 end

 def logged_in?
  !current_user.nil?
 end

protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_in, keys: [:name])  
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])  
  devise_parameter_sanitizer.permit(:account_update, keys: [:name])
 end

end