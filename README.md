![トップページ](/6b0fe36b05340d10e5448c745439f7aa.jpg)

# 概要
Ruby on ralisの勉強として作成したアプリケーションです。
ユーザーの商品や食べ物を写真と共に投稿し、閲覧者に紹介しおすすめするために使用します。


* URL
IPアドレス：http://52.196.22.158/

* ログイン
  * メールアドレス: test@test.com
  * パスワード　：　testman

## バージョン
* ruby '2.6.5'
* rails '6.0.0'

## Gemfile
* haml(5.1.2)
* capistano(3.14.1)
* carrierwave(2.1.0)
* jquery-rails(4.4.0)
* devise


## 実装機能
### 　投稿機能
 新規投稿時に使用します。画像保存機能やレーティング機能、カテゴリー選択機能をjavascriptも用いて実装しています。投稿した画像はAmazon S3に保存されます。
 
  ![fa118a53c73bcd64a981788d79e4abd5](https://user-images.githubusercontent.com/66345393/89140170-cf125400-d57b-11ea-9b23-5f708a70a8cb.gif)



   ![6e1da2733e81376ce0e919a04d446848](https://user-images.githubusercontent.com/66345393/89140032-72169e00-d57b-11ea-99e8-e244c011bb17.gif)
   ![d2d890e8720665decec403e0aa488ed2](https://user-images.githubusercontent.com/66345393/89140241-0b45b480-d57c-11ea-997b-5e2686b8666c.gif)
   ![6adbb3f5c403d24305f0b079e8ed0aed](https://user-images.githubusercontent.com/66345393/89141840-b7899a00-d580-11ea-914b-5790522f6ae1.gif)

--------------------------------------------------------------------------------------------------------------------------
### 　投稿削除機能
 投稿したユーザーのみに投稿削除ボタン「Delete」が表示されます。削除する際は「削除しますか？」の警告画面が表示されます。

 ![a874ca4b29a535cbb9f9e6c115e2068a](https://user-images.githubusercontent.com/66345393/89142247-d76d8d80-d581-11ea-8ea7-04c50ed442ea.gif)

--------------------------------------------------------------------------------------------------------------------------
### 　ユーザー登録機能
 ユーザーの新規登録機能は「devise」を用いて実装しています。

 <img width="620" alt="6f621e7f8dc19b544b42048a36556f84" src="https://user-images.githubusercontent.com/66345393/89142317-05eb6880-d582-11ea-917c-a9704d4d6d03.png">

--------------------------------------------------------------------------------------------------------------------------
### 　ログイン・ログアウト機能
 <img width="794" alt="2442338195f606fd9c4868fc68ba3bc0" src="https://user-images.githubusercontent.com/66345393/89142353-27e4eb00-d582-11ea-8da1-03a2e1838b46.png">
 

### 　一覧表示機能
 投稿順に表示されます。
 ![e52200a7e4510095fa60563f92690e80](https://user-images.githubusercontent.com/66345393/89142428-5c58a700-d582-11ea-9204-5da7043a1769.jpg)


