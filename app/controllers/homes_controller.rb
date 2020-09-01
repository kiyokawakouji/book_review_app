class HomesController < ApplicationController
 before_action :authenticate_user!
 
 def index
  flash[:notice] = "signed_up_but_inactive" unless user_signed_in?
  @user = current_user.id
 end

 def new
 end

 def show
  @user = current_user
 end

 def create
 end
 
end
