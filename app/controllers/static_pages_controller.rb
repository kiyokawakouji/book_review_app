class StaticPagesController < ApplicationController
  # ユーザがログインしていないと"index"にアクセスできない
  before_action :authenticate_user!, only: :index
  def top
  end

  def home
  end
end
