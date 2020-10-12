class User < ApplicationRecord
 devise :database_authenticatable, :rememberable, 
        :validatable, :timeoutable, :registerable, :confirmable

 validates :name, presence: true
 validates :name, length: { maximum: 20 }
 before_save { self.email = email.downcase }
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, { presence: true, format: { with: VALID_EMAIL_REGEX } }
 validates :email, :encrypted_password, confirmation: true
 validates :password, presence: true
 validates :password, length: { minimum: 6 }
 has_many :reviews, dependent: :destroy, foreign_key: :review_user_id

 def remember_me
  true
 end
end
