# frozen_string_literal: true

module Admin
  class ArticlesController < BaseController
    before_action :set_article, only: %i[show edit update destroy]

    def index
      @articles = Article.order(published_at: :desc)
    end

    def show; end

    def new
      @article = Article.new(published_at: Time.zone.today)
    end

    def edit; end

    def create
      @article = Article.new(article_params)
      if @article.save
        redirect_to admin_article_path(@article), success: "Article created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @article.update(article_params)
        redirect_to admin_article_path(@article), success: "Article updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @article.destroy
      redirect_to admin_articles_path, success: "Article removed."
    end

    private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :excerpt, :body, :author, :published_at, :featured)
    end
  end
end
