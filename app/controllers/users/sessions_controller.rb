class Users::SessionsController < Devise::SessionsController

 def new
  super
  @user = User.new
 end
 
   #ログイン後のリダイレクト先
 def after_sign_in_path_for(resource)
  reviews_path
 end 

   #ログアウト後のリダイレクト先
 def after_sign_out_path_for(resource)
  new_user_session_path
 end 

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
