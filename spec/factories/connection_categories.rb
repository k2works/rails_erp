# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :connection_category do
    code "MyString"
    name "MyString"
    connection_category_class_id 1
  end
end
