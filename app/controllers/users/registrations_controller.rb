# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
 # before_action :configure_sign_up_params, only: [:create]
 # before_action :configure_account_update_params, only: [:update]
 before_action :configure_permitted_parameters

  # GET /resource/sign_up
 def new
  # ログインしていたらrootに飛ばす
  redirect_to :root if user_signed_in?
  super
 end

  # POST /resource
  def create
   super
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  # The path used after sign up.
 def after_sign_up_path_for(resource)
  reviews_index_path
 end
end
