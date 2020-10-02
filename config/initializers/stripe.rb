Stripe.api_key = ENV['STRIPE_SECRET_KEY']

class PaymentIncomplete < StandardError
  attr_reader :payment_intent

  def initialize(payment_intent)
    @payment_intent = payment_intent
  end
end
