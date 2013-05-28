# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :department do
    code "MyString"
    start_date "2013-05-28"
    end_date "2013-05-28"
    name "MyString"
    organization_hierarchy 1
    data_input "MyString"
  end
end
