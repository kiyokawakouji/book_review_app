class Users::RegistrationsController < Devise::RegistrationsController

 def create
  super
 end

 def new
  super
 end

 def edit
  super
 end

 def update
  super
 end

 def destroy
  super
 end

protected
 # 新規登録後のリダイレクト先
 def after_sign_up_path_for(resource)
  flash[:notice] = "新規登録完了しました"
  index_reviews_path(resource)
 end

 # アカウント変更後のリダイレクト先
 def after_update_path_for(resource)
  flash[:notice] = "アカウントを編集しました"
  root_path(resource)
 end
end
