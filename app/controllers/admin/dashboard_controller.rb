# frozen_string_literal: true

module Admin
  class DashboardController < BaseController
    def index
      @articles_count = Article.count
      @pending_opportunities = Opportunity.pending.count
      @investors_count = Investor.count
      @subscriptions_count = User.count
    end
  end
end
