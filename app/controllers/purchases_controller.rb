class PurchasesController < ApplicationController
  before_action :set_product

  def show
    @payment_intent = Stripe::PaymentIntent.create(
      amount: @product.amount,
      currency: 'jpy'
    )
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end
end
