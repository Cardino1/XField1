# frozen_string_literal: true

class SubscriptionsController < ApplicationController
  def create
    @subscription = User.new(subscription_params)
    if @subscription.save
      redirect_to root_path, notice: "You're on the list!"
    else
      @articles = Article.published.limit(6)
      @opportunities = Opportunity.approved.latest.limit(4)
      @investors = Investor.featured.limit(4)
      flash.now[:error] = "Please fix the errors below."
      render "home/index", status: :unprocessable_entity
    end
  end

  private

  def subscription_params
    params.require(:user).permit(:email)
  end
end
