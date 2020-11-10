class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2]
  
 protected
 # コールバックを受けた時にユーザが既にアプリケーションの中で認知されているかどうかを判断する
 def self.from_omniauth(access_token) 
  data = access_token.info
  user = User.where(email: data['email']).first
   # ユーザーがいない場合は作成する
   unless user
    user = User.create(name: data['name'],
                       email: data['email'],
                       password: Devise.friendly_token[0,20])
   end
    user
 end
end
