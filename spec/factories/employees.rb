# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    code "MyString"
    name "MyString"
    name_kana "MyString"
    start_date "2013-05-28"
    department_id 1
    occupational_category_id 1
    electronic_approval_id "MyString"
  end
end
