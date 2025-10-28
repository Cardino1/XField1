# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @articles = Article.published.limit(6)
    @opportunities = Opportunity.approved.latest.limit(4)
    @investors = Investor.featured.limit(4)
    @subscription = User.new
  end

  def get_updates
    @subscription = User.new
  end
end
