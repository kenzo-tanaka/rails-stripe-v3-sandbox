class SubscriptionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_plan

  def new; end

  def create
    current_user.update_card(params[:payment_method_id]) if params[:payment_method_id].present?
    current_user.subscribe(@plan.stripe_id)

    redirect_to movies_path, notice: 'サブスクありがとう!'
  rescue PaymentIncomplete => e
    redirect_to payment_path(e.payment_intent.id)
  end

  private

  def set_plan
    @plan = Plan.find_by(id: params[:plan_id])
    redirect_to plan_path if @plan.nil?
  end
end
