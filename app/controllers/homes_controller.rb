class HomesController < ApplicationController

 def index
   flash[:notice] = "signed_up_but_inactive" unless user_signed_in?
   @user = current_user.id
 end

 def new
   @user = current_user.id
 end

end
