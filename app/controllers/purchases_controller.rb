class PurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product

  def show
    @payment_intent = Stripe::PaymentIntent.create(
      amount: @product.amount,
      currency: 'jpy'
    )
  end

  def create
    @payment_intent = Stripe::PaymentIntent.retrieve(params[:payment_intent_id])
    if @payment_intent.status == 'succeeded'
      charge = @payment_intent.charges.data.first
      card = charge.payment_method_details.card

      Order.create(
        stripe_id: charge.id,
        user: current_user,
        product: @product,
        amount: @payment_intent.amount,
        card_brand: card.brand.titleize,
        card_last4: card.last4,
        card_exp_month: card.exp_month,
        card_exp_year: card.exp_year
      )
      redirect_to root_path, notice: '購入を完了しました'
    else
      flash[:alert] = '購入に失敗しました。もう一度お試しください。'
      render :show
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end
end
