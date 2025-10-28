# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.published.order(published_at: :desc)
  end

  def show
    @article = Article.published.find(params[:id])
  end
end
