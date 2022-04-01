# README

 ## アプリケーション名
  仮想映像制作会社 CMBetaのHP

 ## アプリケーションの概要
  映像会社のHPの設定で、メンバー登録、トピックの投稿、トピックに対するコメントの投稿が可能

 ## URL
 https://orghp-ex01.herokuapp.com/  
 （社員用登録/ログインページ：https://orghp-ex01.herokuapp.com/users/new

 ## テスト用アカウント
  email: test01@test.com  
  password:  testest0101

 ### BASIC認証
  ユーザー名：master  
  パスワード：1009  

 ## 利用方法
  #### ユーザー用ページ
    ・TOPページ  
      work/topic/member/companyのセクションに分かれており、各一覧ページがある事が分かる  
      各セクションの右下部分Moreボタンをクリックする事で各セクション一覧ページに遷移することができる  
      ユーザーが最初にアクセスするページ  
      ログイン状態の時、フッターにマイページリンク（メンバー名表示）とログアウトリンクが表示される  
      companyセクションのメールアイコンをクリックするとcontactページに、グーグルmapアイコンをクリックするとcompanyページに遷移することができる  
      ページ最下部の'ページ上へ戻る'をクリックするとTOPページ最上部まで戻ることができる  
    ・work一覧ページ  
      登録されているworkが一覧で表示されている  
      image画像をクリックすると、動画が表示される  
    ・topic一覧ページ  
      登録されているtopicが一覧で表示されている  
      メニューのタイトルか表示されているtopicをクリックするとtopic詳細ページに遷移することができる  
      topic詳細ページでは、そのトピックに対するcommentも含め表示される  
    ・member一覧ページ  
      登録されているmemberが一覧で表示されている  
    ・companyページ  
      会社に住所、グーグルマップで地図が表示されている  
    ・contactページ  
      問い合わせフォームが表示され、問い合わせができる  

  #### 管理者（member)用ページ
    ・会員登録/ログインページ  
      会員（member)登録と登録者がログインできる  
      ユーザーはアクセスできない様にURLを別にしている  
    ・マイページ  
      新規work登録ページ/新規topic登録ページ/ログアウト/TOPページに遷移することができるページ  
    ・新規work登録ページ  
      新規にworkが登録できるページ  
      登録したworkはをwork一覧ページに表示される  
    ・新規topic登録ページ  
      新規にtopicが登録できるページ  
      登録したtopicはをtopic一覧ページに表示される  

   #### 共通部分
    画面中央下部の丸いボタンをクリックすると画面遷移ナビゲーションが出てくる  

 ## アプリケーションを作成した背景
  前職時代にHPの効力を実感したと共に、もっと魅了的にその会社の色を出せないものかと考えており、実際に制作することにしました。

 ## 要件
  (※修正中)  
  https://docs.google.com/spreadsheets/d/1ssdEVTrZEwnXh_mJ9Ntj9uu40RUPWIrPLXeDS50mnRo/edit?usp=sharing

 <!-- ## 実装した機能についての画像やGIFおよびその説明
 -->

 ## 実装予定の機能
  topic、workのタグ分け、検索機能

 ## データベース設計
  https://gyazo.com/8c46d640b119a356300d9e9a75ffbc74

 ## 画面遷移図
  https://gyazo.com/19617155708a77db653fbf9eb8df2c63

 ## 開発環境
  ・フロントエンド  
  ・バックエンド  
  ・Ruby  
  ・HTML  
  ・css  
  ・javascript  

 ## ローカルでの動作方法
  以下のコマンドを順に実行。  
  % git clone https://github.com/umetoyama/orghp_ex01.git  
  % cd orghp_ex01  
  % bundle install  
  % yarn install  

 ## 工夫したポイント
  ただのHPではなくSNSの様に会社としてのニュースを投稿する機能をつけ、
  そのトピックに対して、社員がコメントでやり取りしている様子も外から見れる様にしました。  