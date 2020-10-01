# == Schema Information
#
# Table name: orders
#
#  id             :bigint           not null, primary key
#  amount         :integer
#  card_brand     :string
#  card_exp_month :string
#  card_exp_year  :string
#  card_last4     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  product_id     :bigint           not null
#  stripe_id      :string
#  user_id        :bigint           not null
#
# Indexes
#
#  index_orders_on_product_id  (product_id)
#  index_orders_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (user_id => users.id)
#
class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
end
