# 👋　[hi-tsujisan.com](https://hi-tsujisan.com/)　🐑

### `hi-tsujisan.com` は日程調整の執事アプリです。
#### 様々なサービスのアカウントに依存しないため、<br>各々の環境、アカウント権限などを気にすることなく日程調整ができます。
- **会社の他部署間での日程調整** (インターンの方や、休暇中の方がいる場合に便利です。)
- **学校のクラスでの行事** (チャットグループに入っていない人も調整可能です。)
- **etc...**

## アプリの構成について
- イベント作成画面、イベント詳細画面、参加者予定入力画面の３画面で構成されているアプリです。
- 使用した主な技術は、AWS(CloudFront、EC2、S3)、Flutter、Ruby on Railsです。
- フロントエンドを構成している**Flutterのリポジトリ**は[github.com/gyvm/hi-tsujisan-frontend](https://github.com/gyvm/hi-tsujisan-frontend)です。

## ネットワーク構成図
<!-- ![hitsujisan-network](https://user-images.githubusercontent.com/77700130/134404371-efd4807c-7186-41d2-bd0d-e4e10a625dda.jpg) -->
<p align="center">
<img src="https://user-images.githubusercontent.com/77700130/134404371-efd4807c-7186-41d2-bd0d-e4e10a625dda.jpg"/>
</p>
  
## アプリケーション構成図
<!-- ![hitsujisan-application](https://user-images.githubusercontent.com/77700130/134404265-ba3fa110-5cd2-4515-a6a7-d87828e840ac.jpg) -->
<p align="center">
<img src="https://user-images.githubusercontent.com/77700130/134404265-ba3fa110-5cd2-4515-a6a7-d87828e840ac.jpg"/>
</p>

## ER図
<!-- ![hitsujisan-schema](https://user-images.githubusercontent.com/77700130/134404219-f451c53d-b82e-4a7e-a1f0-1c1383330d19.png) -->
<p align="center">
<img src="https://user-images.githubusercontent.com/77700130/134404219-f451c53d-b82e-4a7e-a1f0-1c1383330d19.png"/>
</p>

## アプリ画面
### イベント作成画面
Topページであるイベント作成画面より、イベント名、候補の日時を入力します。<p align="center">
<img width="270" alt="スクリーンショット 2021-09-23 0 47 11" src="https://user-images.githubusercontent.com/77700130/134405877-a85ba765-70a2-4375-8408-413ab79a9311.png">
</p>

### イベント詳細画面
"イベントを作成する"ボタンを押すと下記のようにイベントが作成されます。  
参加者予定が存在する場合は2枚目の画像のようになります。
<p align="center">
<img width="270" alt="スクリーンショット 2021-09-23 0 47 21" src="https://user-images.githubusercontent.com/77700130/134406261-20e6f50b-d846-4224-bfe8-81dbff6a79a2.png">　　<img width="270" alt="スクリーンショット 2021-09-23 0 50 12" src="https://user-images.githubusercontent.com/77700130/134406827-f627b164-b65b-4302-972b-1d4bcd5148be.png">
</p>

### 参加者予定入力画面
参加者はニックネーム、各日程ごとに都合に合うスタンプをタップします。
<p align="center">
<img width="270" alt="スクリーンショット 2021-09-23 0 47 55" src="https://user-images.githubusercontent.com/77700130/134406784-805a194a-72f7-46a7-9bec-eb0dcfa611ee.png">
</p>

## ToDo
- [ ] サーバレス環境の検討
- [ ] Rspecによるテストの追加
- [ ] パスコードでのイベントプライベート化機能
- [ ] [フロントエンドのTodo](https://github.com/gyvm/hi-tsujisan-frontend#todo)
