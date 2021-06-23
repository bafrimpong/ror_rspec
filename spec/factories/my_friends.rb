FactoryBot.define do
  factory :my_friend do
    first_name { "MyString" }
    last_name { "MyString" }
    street { "MyString" }
    zip_code { "MyString" }
    city { "MyString" }
    email { "MyString" }
    lat { 1.5 }
    lng { 1.5 }
    telephone { 1 }
    mobile { 1 }
  end
end
