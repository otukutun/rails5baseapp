# README

## 開発環境
### Docker
- Docker for Macをいれること

### Mac
- Ruby 2.3.3~
- Rails 5.0.1
- PostgreSQL 9.6
- node v7.2.1

## スタイルガイド
- [Rails](https://github.com/moneyforward/rails-style-guide)

## セットアップ
### Docker

```
$ docker-compose build
$ docker-compose run web bin/rails db:create RAILS_ENV=development
$ docker-compose run web bin/rails db:migrate RAILS_ENV=development
$ docker-compose run --service-ports web bin/rails db:seed RAILS_ENV=development
```

### Mac

```
$ bundle install --path vendor/bundle
$ bin/rails db:create
$ yarn install
$ bin/rails db:migrate
$ bin/rails db:seed RAILS_ENV=development
```

## 開発
### Docker

```
$ docker-compose run --service-ports web bin/rails s -b 0.0.0.0
```

### Mac
サーバ起動

```
$ bin/rails s -b 0.0.0.0
```

```
$ bin/webpack-watcher
```

## テスト実行
### Docker

```
$ docker-compose run web bundle exec rspec spec/models/task_spec.rb
 ```

### Mac
TODO
