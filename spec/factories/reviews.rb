FactoryBot.define do
  factory :review do
    title { "MyString" }
    author { "MyString" }
    description { "MyText" }
    user
  end
end
