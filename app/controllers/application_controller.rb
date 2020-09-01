class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
 # ログイン済ユーザーのみにアクセスを許可する
 before_action :authenticate_user!





 protected

 #新規登録後のリダイレクト先
 def after_sign_up_path_for(resource)
  flash[:notice] = "ログインしました"
  reviews_path
 end
    
 #ログイン後のリダイレクト先
 def after_sign_in_path_for(resource)
  reviews_path
 end 

 #ログアウト後のリダイレクト先
 def after_sign_out_path_for(resource)
  flash[:notice] = "ログアウトしました"
  new_user_session_path
 end 

 #アカウント変更後のリダイレクト先
 def after_update_path_for(resource)
  homes_path
 end
end
