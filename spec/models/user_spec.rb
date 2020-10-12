require 'rails_helper'

RSpec.describe User, type: :model do
  # 保留されたテンプレート
  pending "add some examples to (or delete) #{__FILE__}"

 # validations
 describe "validations" do
   # 存在性
   describe "presence" do
     # 名前、メールアドレス
     it { should validate_presence_of :name }
     it { should validate_presence_of :email }
     # パスワード、パスワード確認
     context "when password and confirmation is not present" do
       before { user.password = user.password_confirmation = " " } 
       it { should_not be_valid }
     end
    end
   # 文字数 charesters
   describe "charesters" do
     # 名前： 最大 20 文字, パスワード： 最小 6 文字
     it { should validate_length_of(:name).is_at_most(20) }
     it { should validate_length_of(:password).is_at_least(6) }
   end
 # email のフォーマット
 describe "email format" do
   # invalid なフォーマット
   context "when invalid format" do
     # 無効なオブジェクト
     it "should be invalid" do
       invalid_addr = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
       invalid_addr.each do |addr|
         user.email = addr
         expect(user).not_to be_valid
       end
      end
    end
  end
   # valid なフォーマット
   context "when valid format" do
     # 有効なオブジェクト
     it "should be valid" do
       valid_addr = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
       valid_addr.each do |addr|
         user.email = addr
         expect(user).to be_valid
       end
     end
   end
  end
end
