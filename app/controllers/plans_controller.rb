class PlansController < ApplicationController
  def show
    @plans = Plan.all
  end
end
