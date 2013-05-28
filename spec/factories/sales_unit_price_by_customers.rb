# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sales_unit_price_by_customer do
    product_id 1
    customer_id 1
    sales_unit_price "9.99"
  end
end
