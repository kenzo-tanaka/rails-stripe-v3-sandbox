class SubscriptionsController < ApplicationController
  before_action :set_plan

  def new; end

  def create; end

  private

  def set_plan
    @plan = Plan.find_by(id: params[:plan_id])
    redirect_to plan_path if @plan.nil?
  end
end
