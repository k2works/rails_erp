# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shipment do
    code "MyString"
    branch_number 1
    number 1
    name "MyString"
    zip "MyString"
    address_1 "MyString"
    address_2 "MyString"
    customer_id 1
  end
end
