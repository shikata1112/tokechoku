FactoryBot.define do
  factory :address do
    user { nil }
    name { "MyString" }
    postcode { "MyString" }
    prefecture { "MyString" }
    city { "MyString" }
    house_number { "MyString" }
    building { "MyString" }
  end
end
