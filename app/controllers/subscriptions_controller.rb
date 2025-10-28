# frozen_string_literal: true

class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      redirect_to root_path, notice: "Thanks for subscribing to XField updates!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:email)
  end
end
