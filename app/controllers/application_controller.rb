class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?
 protect_from_forgery with: :exception
 # ログイン済ユーザーのみにアクセスを許可する
 before_action :authenticate_user!
 # サインインしているユーザーを取得
 before_action :set_current_user

 def set_current_user 
  @current_user = User.find_by(id: session[:user_id])
  # Userインスタンスの取得
 end

 def authenticate_user
  if @current_user == nil
   flash[:notice] = "ログインが必要です"
   redirect_to("/users/sign_up")
  end
 end

 def forbid_login_user 
  if @current_user
   flash[:notice] = "すでにログインしています"
   redirect_to("/reviews")
  end
 end

 protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_in, keys: [:name])  
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])  
  devise_parameter_sanitizer.permit(:account_update, keys: [:name])  
 end
end
