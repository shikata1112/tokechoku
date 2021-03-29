FactoryBot.define do
  factory :inquiry do
    user { nil }
    name { "MyString" }
    email { "MyString" }
    phone_number { "MyString" }
    content { "MyString" }
  end
end
