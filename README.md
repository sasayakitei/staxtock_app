# 概要

## コンセプト
挫折しない学習習慣を身につけるためのサポートツール

## タイトル
**STAXTOCK**

- 読み方：スタックストック
- 意味：積み上げ・蓄積(Stack Stock)

## ターゲット
目標に向けて学習・トレーニング・自己研鑽を続けようと考えている人

- 年齢層：中高生以上
- 職業：学生・会社員など

## ゴール
- 学んだことをアウトプットする習慣を身につける
- アウトプットすることを前提とした学習スタイルを身につける

## 主な機能
- 毎日の学習やトレーニングの内容・時間を一元的に記録・蓄積(StackRecords)
- StackRecordsをカレンダーやグラフ上にプロットし毎日の活動量を可視化
- StackRecordsをユーザーごとに集計しランキング化
- ユーザー間のDM機能
- ユーザー間のフォロー機能
- Twitter等のSNSへの共有機能
- NGユーザー機能（できれば）
- 実績システム（できれば）
- 実績ポイントで解放できる追加機能（できれば）

# 使用技術・言語

## フロントエンド
- HTML5/CSS3 (Slim/Sass) - CSS F/W: UIkit
- JavaScript - F/W: Vue.js

## バックエンド
- Ruby 2.7.0 - F/W: Ruby on Rails 6.1

## データベース
- MySQL

## サーバー
- nginx/unicorn

## コンテナ
- Docker/docker-compose（できれば）

## インフラ
- AWS (VPC, EC2, S3, Route53, etc.) - 本番環境
- Heroku - 疑似本番環境

## その他
- RSpec (テスト用フレームワーク)
- Git/GitHub (バージョン管理)
- GitHub Actions or Circle CI(自動テスト・自動デプロイ)