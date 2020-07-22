class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable

  #emailとpassがその確認用の入力と一致しているか？
  validates :email, :encrypted_password, confirmation: true

  def remember_me
    true
  end
end
