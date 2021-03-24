FactoryBot.define do
  factory :order do
    member { nil }
    watch { nil }
    billing_amount { 1 }
    delivery_name { "MyString" }
    payment_method { 1 }
    status { 1 }
  end
end
