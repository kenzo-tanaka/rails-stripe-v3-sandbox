# == Schema Information
#
# Table name: charges
#
#  id              :bigint           not null, primary key
#  amount          :integer
#  amount_refunded :integer
#  card_brand      :string
#  card_exp_month  :string
#  card_exp_year   :string
#  card_last4      :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  stripe_id       :string
#  user_id         :bigint           not null
#
# Indexes
#
#  index_charges_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Charge < ApplicationRecord
  belongs_to :user
end
