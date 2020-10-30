class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
 # ログイン済ユーザーのみにアクセスを許可する
 #before_action :authenticate_user!
 # deviseの画面にいったら、parameterをモデルに渡すアクションを実行する
 #before_action :configure_permitted_parameters, if: :devise_controller?


 protected

end