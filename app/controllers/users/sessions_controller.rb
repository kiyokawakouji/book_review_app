class Users::SessionsController < Devise::SessionsController

 def new
  super
 end
     
 def create
  super
 end
     
 def destroy
  super
 end

 protected

 # ログイン後のリダイレクト先
 def after_sign_in_path_for(resource)
  flash[:notice] = "ログインに成功しました"
  reviews_path(resource)
 end

 # ログアウト後のリダイレクト先
 def after_sign_out_path_for(resource)
  flash[:notice] = "ログアウトしました"
  root_path(resource)
 end 
end
