class User < ApplicationRecord
 # Include default devise modules. Others available are:
 # :lockable, :trackable and :omniauthable
 devise :database_authenticatable, :rememberable, 
        :validatable, :timeoutable, :registerable, :confirmable

 # emailとpassがその確認用の入力と一致しているか？
 validates :email, :encrypted_password, confirmation: true
 validates :name, presence: true
 has_many :reviews, dependent: :destroy, foreign_key: :review_user_id

 def remember_me
  true
 end
end
