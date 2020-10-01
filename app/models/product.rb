# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  amount      :integer          not null
#  description :text
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
end
