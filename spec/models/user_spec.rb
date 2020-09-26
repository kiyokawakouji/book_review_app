require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  # 名がなければ無効な状態であること
 it "is invalid without a first name" do
   user = User.new(first_name: nil)
   user.valid?
   expect(user.errors[:first_name]).to include("can't be blank")
 end
end
