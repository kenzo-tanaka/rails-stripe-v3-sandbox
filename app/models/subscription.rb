# == Schema Information
#
# Table name: subscriptions
#
#  id            :bigint           not null, primary key
#  ends_at       :datetime
#  status        :string
#  stripe_plan   :string
#  trial_ends_at :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  stripe_id     :string
#  user_id       :bigint           not null
#
# Indexes
#
#  index_subscriptions_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Subscription < ApplicationRecord
  belongs_to :user

  def active?
    %w[trialing active].include?(status) && (ends_at.nil? || on_grace_period? || on_trial?)
  end

  def on_grace_period?
    canceled? && Time.zone.now < ends_at
  end

  def on_trial?
    trial_ends_at? && Time.zone.now < trial_ends_at
  end

  def canceled?
    ends_at?
  end

  def has_incomplete_payment?
    %w[past_due incomplete].include?(status)
  end
end
