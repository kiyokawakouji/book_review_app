class HomesController < ApplicationController
 # ログイン済ユーザーのみにアクセスを許可する
 before_action :authenticate_user!

 def index
  flash[:notice] = "signed_up_but_inactive" unless user_signed_in?
  @user = current_user.id
 end

 def new
 end

end
