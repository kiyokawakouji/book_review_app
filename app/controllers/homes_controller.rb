class HomesController < ApplicationController
 before_action :authenticate_user!
 
 def index
  flash[:notice] = "signed_up_but_inactive" unless user_signed_in?
  @user = current_user.id
 end

 def create
  user = User.find(params[:id])
  if user.save
   redirect_to root_path, notice: "ユーザーを作成しました"
  else
   render :new
  end
 end
 
end
