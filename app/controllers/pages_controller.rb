# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @latest_articles = Article.published.order(published_at: :desc).limit(3)
    @highlighted_opportunities = Opportunity.approved.order(created_at: :desc).limit(4)
    @investors = Investor.order(created_at: :desc).limit(6)
    @subscription = Subscription.new
  end
end
