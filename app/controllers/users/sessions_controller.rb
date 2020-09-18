class Users::SessionsController < Devise::SessionsController
 
  def new
    self.resource = resource_class.new(sign_in_params)
    clean_up_passwords(resource)
    yield resource if block_given?
    respond_with(resource, serialize_options(resource))
  end

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
  end

  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message! :notice, :signed_out if signed_out
    yield if block_given?
    respond_to_on_destroy
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
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
