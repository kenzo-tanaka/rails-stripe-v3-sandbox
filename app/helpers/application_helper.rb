module ApplicationHelper
  def formatted_amount(amount)
    number_to_currency(amount, unit: '¥', precision: 0)
  end
end
