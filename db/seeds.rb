# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Department.create(
  code: '10000',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '全社',
  organization_hierarchy: 3,
  higt_department_code: 1,
  data_input: 'OK'
  )
Department.create(
  code: '11000',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '営業本部',
  organization_hierarchy: 2,
  higt_department_code: 1,
  data_input: 'OK'
  )
Department.create(
  code: '12000',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '管理本部',
  organization_hierarchy: 2,
  higt_department_code: 1,
  data_input: 'OK'
  )
Department.create(
  code: '11100',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '東日本営業部',
  organization_hierarchy: 1,
  higt_department_code: 2,
  data_input: 'NG'
  )
Department.create(
  code: '11200',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '西日本営業部',
  organization_hierarchy: 1,
  higt_department_code: 2,
  data_input: 'NG'
  )
Department.create(
  code: '12100',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '総務部',
  organization_hierarchy: 1,
  higt_department_code: 3,
  data_input: 'OK'
  )
Department.create(
  code: '12200',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '経理部',
  organization_hierarchy: 1,
  higt_department_code: 3,
  data_input: 'OK'
  )
Department.create(
  code: '11101',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '営業１課',
  organization_hierarchy: 0,
  higt_department_code: 4,
  data_input: 'NG'
  )
Department.create(
  code: '11102',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '営業２課',
  organization_hierarchy: 0,
  higt_department_code: 4,
  data_input: 'NG'
  )
Department.create(
  code: '11103',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '営業３課',
  organization_hierarchy: 0,
  higt_department_code: 5,
  data_input: 'NG'
  )
Department.create(
  code: '11104',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '営業４課',
  organization_hierarchy: 0,
  higt_department_code: 5,
  data_input: 'NG'
  )
Department.create(
  code: '12101',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '庶務２課',
  organization_hierarchy: 0,
  higt_department_code: 6,
  data_input: 'OK'
  )
Department.create(
  code: '12102',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '人事課',
  organization_hierarchy: 0,
  higt_department_code: 6,
  data_input: 'OK'
  )
Department.create(
  code: '12201',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '経理課',
  organization_hierarchy: 0,
  higt_department_code: 7,
  data_input: 'OK'
  )
Department.create(
  code: '12202',
  start_date: '2013-05-29',
  end_date: '2014-05-29',
  name: '財務課',
  organization_hierarchy: 0,
  higt_department_code: 7,
  data_input: 'OK'
  )
OccupationalCategory.create(
  code: "00001",
  name: "管理職"
  )
OccupationalCategory.create(
  code: "00002",
  name: "一般職"
  )
OccupationalCategory.create(
  code: "00003",
  name: "パートタイム"
  )
ElectronicApproval.create(
  code: "00001",
  name: "管理者"
  )
ElectronicApproval.create(
  code: "00001",
  name: "一般ユーザ"
  )

Employee.create(
  code: "00001",
  name: "社長",
  name_kana: "シャチョウ",
  start_date: "2013-05-29",
  department_id: 1,
  occupational_category_id: 1,  
  electronic_approval_id: 1
  )
Employee.create(
  code: "00002",
  name: "営業本部長",
  name_kana: "エイギョウホンブチョウ",
  start_date: "2013-05-29",
  department_id: 2,
  occupational_category_id: 1,
  electronic_approval_id: 1
  )
Employee.create(
  code: "00002",
  name: "管理本部長",
  name_kana: "カンリホンブチョウ",
  start_date: "2013-05-29",
  department_id: 3,
  occupational_category_id: 1,
  electronic_approval_id: 1
  )
Employee.create(
  code: "00003",
  name: "東日本営業部長",
  name_kana: "ヒガシニホンエイギョウブチョウ",
  start_date: "2013-05-29",
  department_id: 4,
  occupational_category_id: 1,
  electronic_approval_id: 1
  )
Employee.create(
  code: "00004",
  name: "西日本営業部長",
  name_kana: "ニシニホンエイギョウブチョウ",
  start_date: "2013-05-29",
  department_id: 5,
  occupational_category_id: 1,
  electronic_approval_id: 1
  )
Employee.create(
  code: "00005",
  name: "総務部長",
  name_kana: "ソウムブチョウ",
  start_date: "2013-05-29",
  department_id: 6,
  occupational_category_id: 1,
  electronic_approval_id: 1
  )
Employee.create(
  code: "00006",
  name: "経理部長",
  name_kana: "ケイリブチョウ",
  start_date: "2013-05-29",
  department_id: 7,
  occupational_category_id: 1,
  electronic_approval_id: 1
  )
Employee.create(
  code: "00007",
  name: "営業１課のA",
  name_kana: "エイギョウイチカノエー",
  start_date: "2013-05-29",
  department_id: 8,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00008",
  name: "営業１課のB",
  name_kana: "エイギョウイチカノビー",
  start_date: "2013-05-29",
  department_id: 8,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00009",
  name: "営業１課のC",
  name_kana: "エイギョウイチカノシー",
  start_date: "2013-05-29",
  department_id: 8,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00010",
  name: "営業１課のD",
  name_kana: "エイギョウイチカノディー",
  start_date: "2013-05-29",
  department_id: 8,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00011",
  name: "営業２課のA",
  name_kana: "エイギョウ二カノエー",
  start_date: "2013-05-29",
  department_id: 9,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00012",
  name: "営業２課のB",
  name_kana: "エイギョウ二カノビー",
  start_date: "2013-05-29",
  department_id: 9,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00013",
  name: "営業２課のC",
  name_kana: "エイギョウ二カノシー",
  start_date: "2013-05-29",
  department_id: 9,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00014",
  name: "営業３課のA",
  name_kana: "エイギョウノエー",
  start_date: "2013-05-29",
  department_id: 10,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00015",
  name: "営業３課のB",
  name_kana: "エイギョウサンカノビー",
  start_date: "2013-05-29",
  department_id: 10,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00016",
  name: "営業４課のA",
  name_kana: "エイギョウヨンカノエー",
  start_date: "2013-05-29",
  department_id: 11,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00017",
  name: "庶務２課のA",
  name_kana: "ショムニカノエー",
  start_date: "2013-05-29",
  department_id: 12,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00018",
  name: "庶務２課のB",
  name_kana: "ショムニカノビー",
  start_date: "2013-05-29",
  department_id: 12,
  occupational_category_id: 3,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00019",
  name: "庶務２課のC",
  name_kana: "ショムニカノシー",
  start_date: "2013-05-29",
  department_id: 12,
  occupational_category_id: 3,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00020",
  name: "人事課のA",
  name_kana: "ジンジカノエー",
  start_date: "2013-05-29",
  department_id: 13,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00021",
  name: "経理課のA",
  name_kana: "ケイリカノエー",
  start_date: "2013-05-29",
  department_id: 14,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00022",
  name: "経理課のB",
  name_kana: "ケイリカノビー",
  start_date: "2013-05-29",
  department_id: 14,
  occupational_category_id: 3,
  electronic_approval_id: 2
  )
Employee.create(
  code: "00023",
  name: "財務課のA",
  name_kana: "ザイムカノエー",
  start_date: "2013-05-29",
  department_id: 15,
  occupational_category_id: 2,
  electronic_approval_id: 2
  )

ProductGrouping.create(
  code: "00001",
  name: "生鮮食料品",
  class_name: "階層２",  
  product_grouping_id: 1
  )
ProductGrouping.create(
  code: "00002",
  name: "食肉",
  class_name: "階層１",  
  product_grouping_id: 1
  )
ProductGrouping.create(
  code: "00003",
  name: "水産物",
  class_name: "階層１",  
  product_grouping_id: 1
  )
ProductGrouping.create(
  code: "00004",
  name: "牛肉",
  class_name: "階層０",  
  product_grouping_id: 2
  )
ProductGrouping.create(
  code: "00005",
  name: "豚肉",
  class_name: "階層０",  
  product_grouping_id: 2
  )
ProductGrouping.create(
  code: "00006",
  name: "まぐろ",
  class_name: "階層０",  
  product_grouping_id: 3
  )
ProductGrouping.create(
  code: "00007",
  name: "えび",
  class_name: "階層０",  
  product_grouping_id: 3
  )

Product.create(
  code: "00001",
  name_long: "牛ひれ肉",
  name_short: "牛ひれ",
  name_kana: "ギュウヒレ",  
  model_number: "M0001",
  unit_sales_price: 1000,
  purchase_price: 500,
  sales_unit_price: 1000,
  tax_division: "外税",  
  product_grouping_id: 4 
  )
Product.create(
  code: "00002",
  name_long: "牛ロース肉",
  name_short: "牛ロース",
  name_kana: "ギュウロース",  
  model_number: "M0002",
  unit_sales_price: 2000,
  purchase_price: 1000,
  sales_unit_price: 2000,
  tax_division: "外税",  
  product_grouping_id: 4 
  )
Product.create(
  code: "00003",
  name_long: "豚ひれ肉",
  name_short: "豚ひれ",
  name_kana: "ブタヒレ",  
  model_number: "M0003",
  unit_sales_price: 500,
  purchase_price: 250,
  sales_unit_price: 500,
  tax_division: "外税",  
  product_grouping_id: 5
  )
Product.create(
  code: "00004",
  name_long: "豚ロース肉",
  name_short: "豚ロース",
  name_kana: "ブタロース",  
  model_number: "M0004",
  unit_sales_price: 750,
  purchase_price: 300,
  sales_unit_price: 750,
  tax_division: "外税",  
  product_grouping_id: 5 
  )
Product.create(
  code: "00005",
  name_long: "まぐろトロ",
  name_short: "トロ",
  name_kana: "マグロトロ",  
  model_number: "M0005",
  unit_sales_price: 3000,
  purchase_price: 1500,
  sales_unit_price: 3000,
  tax_division: "外税",  
  product_grouping_id: 6
  )
Product.create(
  code: "00006",
  name_long: "まぐろ赤身",
  name_short: "赤身",
  name_kana: "マグロアカミ",  
  model_number: "M0006",
  unit_sales_price: 2000,
  purchase_price: 1000,
  sales_unit_price: 2000,
  tax_division: "外税",  
  product_grouping_id: 6
  )
Product.create(
  code: "00007",
  name_long: "ブラックタイガー",
  name_short: "ブラック",
  name_kana: "ブラックタイガー",  
  model_number: "M0007",
  unit_sales_price: 300,
  purchase_price: 100,
  sales_unit_price: 300,
  tax_division: "外税",  
  product_grouping_id: 7
  )
Product.create(
  code: "00008",
  name_long: "大正えび",
  name_short: "えび",
  name_kana: "タイショウエビ",  
  model_number: "M0008",
  unit_sales_price: 500,
  purchase_price: 200,
  sales_unit_price: 500,
  tax_division: "外税",  
  product_grouping_id: 7
  )

ConnectionGroup.create(
  code: "00001",
  name: "得意先"
  )
ConnectionGroup.create(
  code: "00002",
  name: "通常"
  )
ConnectionGroup.create(
  code: "00003",
  name: "一見"
  )

Connection.create(
  code: "00001",
  name:"取引先A",
  name_kana: "トリヒキサキエー",
  supplier_division: "1",
  customer_division: "0",
  zip: "000-0000",
  prefectures: "都道府県",  
  address_1: "住所１",
  address_2: "住所２",
  ban_division: "0",
  miscellaneous_division: "",
  credit_limit: '',
  credit_limit_increas_frame: '',
  connection_group_id: 1
  )
Connection.create(
  code: "00002",
  name:"取引先B",
  name_kana: "トリヒキサキビー",
  supplier_division: "0",
  customer_division: "1",
  zip: "000-0000",
  prefectures: "都道府県",  
  address_1: "住所１",
  address_2: "住所２",
  ban_division: "0",
  miscellaneous_division: "",
  credit_limit: '',
  credit_limit_increas_frame: '',
  connection_group_id: 1
  )
Connection.create(
  code: "00003",
  name:"取引先C",
  name_kana: "トリヒキサキシー",
  supplier_division: "0",
  customer_division: "1",
  zip: "000-0000",
  prefectures: "都道府県",  
  address_1: "住所１",
  address_2: "住所２",
  ban_division: "0",
  miscellaneous_division: "",
  credit_limit: '',
  credit_limit_increas_frame: '',
  connection_group_id: 1
  )

Supplier.create(
  code: "00001",
  branch_number: 1,
  name: "仕入先A",
  name_kana: "シイレサキエー",
  person_responsible_name: "仕入先A担当",
  department_name: "仕入先販売部門",
  zip: "000-0000",
  prefectures: "都道府県",  
  address_1: "住所１",
  address_2: "住所２",
  phone_number: "000-0000-0000",
  fax_number: "000-0000-0000",
  mail:"mail@hoge.com",  
  closing_day: "20:２０日",
  payment_month: "0:当月",  
  payment_day: "10:１０日",
  payment_division: "1:振込",
  connection_id: 1
  )

Customer.create(
  code: "00001",
  branch_number: 1,
  division: "得意先",
  billing_code: "B0001",
  billing_branch_number: 1,
  collect_code: "C0001",  
  collect_branch_number: 1,
  name: "顧客A",
  name_kana: "コキャクエー",
  company_person_responsible_code: "00001",
  person_responsible_name: "自社担当者A",
  department_name: "販売部門",
  zip: "000-0000",
  prefectures: "都道府県",  
  address_1: "住所１",
  address_2: "住所２",
  phone_number: "000-0000-0000",
  fax_number: "000-0000-0000",
  mail: "mail@hoge.com",
  collect_division: "1:都度請求",
  closing_day_1: "10:１０日",
  payment_month_1: "0:当月",
  payment_day_1: "10:１０日",  
  payment_method_1: "1:振込",
  payment_month_2: "2:翌々月",
  closing_day_2: "2:締請求",  
  payment_day_2: "99:末日",
  payment_method_2: "2:手形",  
  connection_id: 2
  )

Shipment.create(
  number: 1,
  name: "新宿営業所",
  zip: "000-0000",  
  address_1: "住所１",
  address_2: "住所２",
  customer_id: 1
  )
Shipment.create(
  number: 2,
  name: "横浜営業所",
  zip: "000-0000",  
  address_1: "住所１",
  address_2: "住所２",
  customer_id: 1
  )

ConnectionCategoryClass.create(
  code: "01",
  name: "業種"
  )
ConnectionCategoryClass.create(
  code: "02",
  name: "業態"
  )
ConnectionCategoryClass.create(
  code: "03",
  name: "規模"
  )

ConnectionCategory.create(
  code: "001",
  name: "小売",
  connection_category_class_id: 2
  )
ConnectionCategory.create(
  code: "002",
  name: "卸",
  connection_category_class_id: 2
  )
ConnectionCategory.create(
  code: "003",
  name: "製造",
  connection_category_class_id: 2
  )
ConnectionCategory.create(
  code: "004",
  name: "サービス",
  connection_category_class_id: 2
  )

ConnectionCategoryMember.create(
  connection_category_id: 2,
  connection_id: 1
  )
ConnectionCategoryMember.create(
  connection_category_id: 2,
  connection_id: 2
  )
ConnectionCategoryMember.create(
  connection_category_id: 2,
  connection_id: 3
  )

SalesUnitPriceByCustomer.create(
  customer_id: 1,
  product_id: 2,
  sales_unit_price: 10000
  )
