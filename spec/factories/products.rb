# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    code "MyString"
    name_long "MyString"
    name_short "MyString"
    name_kana "MyString"
    model_number "MyString"
    unit_sales_price "9.99"
    purchase_price "9.99"
    sales_unit_price "9.99"
    tax_division "MyString"
    product_grouping_id 1
  end
end
