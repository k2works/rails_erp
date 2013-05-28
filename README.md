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

rails g scaffold employee code:string name:string name_kana:string start_date:date department_id:integer occupational_category_id:integer electronic_approval_id

rails g scaffold department code:string start_date:date end_date:date name:string organization_hierarchy:integer data_input:string

rails g scaffold electronic_approval code:string name:string

rails g scaffold occupational_category code:string name:string

rails g controller home index




#### 取引先（顧客/仕入先）マスタの設計

### 販売システムのDB設計

#### 受注業務のDB設計

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
