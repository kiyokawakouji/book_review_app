# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
 # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
 def new
  # ログインしていたらrootに飛ばす
  redirect_to :root if user_signed_in?
  super
 end

  # POST /resource/sign_in

  # DELETE /resource/sign_out
 def destroy
  super
  redirect_to root_url, notice: "ログアウトしました"
 end

 protected

  # If you have extra params to permit, append them to the sanitizer.
 def after_sign_in_path_for(resource)
  reviews_index_path
 end

 def after_sign_out_path_for(resource)
  new_user_session_path
 end
end
