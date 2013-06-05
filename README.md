# RoR ERPパッケージサンプル
## 目的
## 前提条件
## 構成
### セットアップ
#### 自動テスト環境設定
#### 日本語環境設定
* Railsアプリを日本語化する

 `$ echo "gem 'i18n_generators'" >> Gemfile`

 `$ bundle`

 `$ rails g i18n ja`
 
### 業務システムの概要とマスタの設計
#### 販売管理システムの全体像
#### 基幹業務システム構築のポイント
+ マスタの共通化
+ データのターンアラウンド
#### 部門/社員/商品マスタの設計
+ 業務システムの主なマスタデータ
 + 部門マスタ
 + 社員マスタ
 + 商品マスタ
 + 顧客マスタ
 + 仕入先マスタ
 + 倉庫マスタ
 + 名称マスタ
+ 部門マスタ
+ 8種類の原価法
 + 個別原価法
 + 先入先出法
 + 後入先出法
 + 総平均法
 + 移動平均法
 + 単純平均法
 + 最終仕入原価法
 + 売価還元法

+ ホーム画面
`rails g controller home index`

+ 社員マスタ
`
rails g scaffold employee code:string name:string name_kana:string start_date:date department_id:integer occupational_category_id:integer electronic_approval_id`

+ 部門マスタ
`
rails g scaffold department code:string start_date:date end_date:date name:string organization_hierarchy:integer hight_department_code:string data_input:string
`

+ 電子承認マスタ
`
rails g scaffold electronic_approval code:string name:string
`

+ 職種区分
`
rails g scaffold occupational_category code:string name:string
`
+ 商品分類マスタ
`
rails g scaffold product_grouping code:string name:string class_name:string product_grouping_id:integer
`
+ 商品マスタ
`
rails g scaffold product code:string name_long:string name_short:string name_kana:string model_number:string unit_sales_price:decimal purchase_price:decimal sales_unit_price:decimal tax_division:string product_grouping_id:integer
`
+ 顧客別販売単価
`rails g scaffold sales_unit_price_by_customer product_id:integer customer_id:integer sales_unit_price:decimal`

#### 取引先（顧客/仕入先）マスタの設計

+ 取引先グループマスタ

`rails g scaffold connection_group code:string name:string`

+ 取引先マスタ
`
rails g scaffold connection code:string name:string name_kana:string supplier_division:string customer_division:string zip:string prefectures:string address_1:string address_2:string ban_division:string miscellaneous_division:string credit_limit:decimal credit_limit_increas_frame:decimal connection_group_id:integer
`
+ 仕入先マスタ
`
rails g scaffold supplier code:string branch_number:integer name:string name_kana:string person_responsible_name:string department_name:string zip:string prefectures:string address_1:string address_2:string phone_number:string fax_number:string mail:string closing_day:string payment_month:string payment_day:string payment_division:string connection_id:integer
`

+ 顧客マスタ
`
rails g scaffold customer code:string branch_number:integer division:string billing_code:string billing_branch_number:integer collect_code:string collect_branch_number:integer name:string name_kana:string company_person_responsible_code:string person_responsible_name:string department_name:string zip:string prefectures:string address_1:string address_2:string phone_number:string fax_number:string mail:string collect_division:string closing_day_1:string payment_month_1:string payment_day_1:string payment_method_1:string closing_day_2:string payment_month_2:string payment_day_2:string payment_method_2:string connection_id
`

+ 出荷先マスタ
`
rails g scaffold shipment number:integer name:string zip:string address_1:string address_2:string customer_id:integer
`

+ 取引先分類所属マスタ
`
rails g scaffold connection_category_member connection_id:integer connection_category_id:integer
`

+ 取引先分類マスタ
`
rails g scaffold connection_category code:string name:string connection_category_class_id:integer
`

+ 取引先分類種別マスタ
`
rails g scaffold connection_category_class code:string name:string
`

+ 顧客マスタ
 - 得意先
 - 請求先
 - 出荷先
 - 都度請求と締請求
 - 複数締日
 - 支払方法（現金と手形）

+ 取引先グループマスタ

+ 取引先分類マスタ

### 販売システムのDB設計

#### 受注業務のDB設計
+ 商品マスタに在庫区分を追加する。

`rails g migration AddInventoryDvivisionToProducts inventory_control_division:string inventory_reservation_division`

`rake db:migrate`

`rake db:test:prepare`

+ 受注データを作成する。

`rails g scaffold order order_number:integer order_date:date department_id:integer customer_id:integer employee_id:integer desired_delivery_date:date customer_order_number:string warehouse_code:string contract_amount_sum:decimal consumption_tax_amount:decimal notes:text`

+ 受注データ明細を作成する。

`rails g model order_details order_line_number:integer product_id:integer product_name:string product_sales_unit_price:decimal order_amount:decimal consumption_tax_rate:decimal reserve_amount:decimal shipping_instructions_amount:decimal shipped_amount:decimal finish_flag:integer discount:decimal due_date:date order_id:integer`

`rake db:migrate`

`rake db:test:prepare`

+ リレーションの設定
#### 出荷/売上業務のDB設計

#### 請求業務のDB設計

#### 回収業務のDB設計

### 仕入/在庫システムのDB設計

#### 発注/仕入業務のDB設計

#### 入庫/倉庫移動業務のDB設計

#### 在庫管理業務のDB設計

#### 仕入/支払業務のDB設計

#### 業務全般に関する処理のDB設計

## 参考

+ グラス片手にデータベース設計（販売管理システム編）
