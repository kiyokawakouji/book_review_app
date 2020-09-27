class Users::RegistrationsController < Devise::RegistrationsController

protected
 # 新規登録後のリダイレクト先
 def after_sign_up_path_for(resource)
  flash[:notice] = "新規登録完了しました"
  reviews_path(resource)
 end

 # アカウント変更後のリダイレクト先
 def after_update_path_for(resource)
  flash[:notice] = "アカウントを編集しました"
  root_path(resource)
 end
end
