# Rails6 ×Stripe V3のサンプル

- Onetime 決済
- Subscription 決済
- 領収書発行機能



## 試し方

```sh
git clone https://github.com/akito/rails-stripe-sandbox.git
cd rails-stripe-sandbox
bin/rails db:create && bin/rails db:migrate && bin/rails db:seed
```

環境変数を設定してください
```sh
cp -a .env.sample .env
```

https://dashboard.stripe.com/test/products でProductを作成して、app_idを設定してください

```ruby
# db/seeds.rb
Plan.create(name: '1年プラン', amount: 1000, interval: '年', stripe_id: 'price_1HXicJDWRM6gVeDnWPDKbB7W')
Plan.create(name: '毎月プラン', amount: 100, interval: '月', stripe_id: 'price_1HXia5DWRM6gVeDnvhULmybr')

```

```
overmind s
open http://localhost:3000
```

サンプルクレジットカード番号
```
424242424242 04/24 4242
```
