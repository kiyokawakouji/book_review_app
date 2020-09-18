class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
 # ログイン済ユーザーのみにアクセスを許可する
 before_action :authenticate_user!

 def index
 end

 def new
   @user = current_user.id
 end
 
 protected
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_in, keys: [:name])  
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])  
   devise_parameter_sanitizer.permit(:account_update, keys: [:name])  
 end


end
