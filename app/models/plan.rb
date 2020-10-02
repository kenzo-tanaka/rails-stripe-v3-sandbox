# == Schema Information
#
# Table name: plans
#
#  id         :bigint           not null, primary key
#  amount     :string           not null
#  interval   :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  stripe_id  :string           not null
#
class Plan < ApplicationRecord
end
