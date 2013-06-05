# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    order_number 1
    order_date "2013-06-05"
    department_id 1
    customer_id 1
    employee_id 1
    desired_delivery_time "2013-06-05"
    customer_order_number "MyString"
    warehouse_code "MyString"
    contract_amount_sum "9.99"
    consumption_tax_amount "9.99"
    notes "MyText"
    order_details_id 1
  end
end
