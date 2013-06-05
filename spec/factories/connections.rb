# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :connection do
    code "MyString"
    name "MyString"
    name_kana "MyString"
    division "MyString"
    zip "MyString"
    prefectures "MyString"
    address_1 "MyString"
    address_2 "MyString"
    ban_division "MyString"
    miscellaneous_division "MyString"
    credit_limit "9.99"
    credit_limit_increas_frame "9.99"
    connection_group_id 1
  end
end
