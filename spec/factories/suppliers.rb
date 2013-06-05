# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :supplier do
    code "MyString"
    branch_number 1
    name "MyString"
    name_kana "MyString"
    person_responsible_name "MyString"
    department_name "MyString"
    zip "MyString"
    prefectures "MyString"
    address_1 "MyString"
    address_2 "MyString"
    phone_number "MyString"
    fax_number "MyString"
    mail "MyString"
    closing_day "MyString"
    payment_month "MyString"
    payment_day "MyString"
    payment_division "MyString"
    connection_id 1
  end
end
