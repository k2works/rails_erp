# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_detail, :class => 'OrderDetails' do
    order_line_number 1
    product_id 1
    product_name "MyString"
    product_sales_unit_price "9.99"
    order_amount "9.99"
    consumption_tax_rate ""
    reserve_amount "9.99"
    shipping_instructions_amount "9.99"
    shipped_amount "9.99"
    finish_flag 1
    discount ""
    due_date "2013-06-05"
  end
end
