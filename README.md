# hi-tsujisan-rails🐑
- [hi-tsujisan.com](https://hi-tsujisan.com/)🐑は簡易的な日程調整の執事アプリです。
- アカウントを必要としないため、各サービスをまたぎ様々な人と気軽な日程調整が可能です。
- 会社の他部署間での日程調整や、学校のクラスでの行事など利用すると便利です。

## アプリの構成について
- 現在hi-tsujisan.comは3画面で構成されています。
    - イベント作成画面(新規イベントの作成ページ)
    - イベント詳細画面(作成されたイベントのTOPページ)
    - 参加者予定入力画面(イベント参加者が予定を入力するページ)
- 技術スタック
    - インフラ
        - AWS(EC2, ELB, S3, CloudFront, Route 53)
    - FW
        - Ruby on Rails
        - Flutter
            - [Repository](https://github.com/gyvm/hi-tsujisan-frontend)

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

## ToDo
- [ ] Open APIに対応
- [ ] Serializerの使用
- [ ] CircleCIの導入
- [ ] MySQLからPostgreSQLへ移行
- [ ] 新規機能の検討、追加
