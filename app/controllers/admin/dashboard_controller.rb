# frozen_string_literal: true

module Admin
  class DashboardController < BaseController
    def index
      @pending_opportunities = Opportunity.pending.order(created_at: :desc)
      @recent_articles = Article.order(created_at: :desc).limit(5)
      @subscriptions_count = Subscription.count
    end
  end
end
