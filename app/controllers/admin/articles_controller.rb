# frozen_string_literal: true

module Admin
  class ArticlesController < BaseController
    before_action :set_article, only: %i[show edit update destroy]

    def index
      @articles = Article.order(created_at: :desc)
    end

    def show; end

    def new
      @article = Article.new
    end

    def edit; end

    def create
      @article = Article.new(article_params)
      if @article.save
        redirect_to admin_article_path(@article), notice: "Article created successfully."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @article.update(article_params)
        redirect_to admin_article_path(@article), notice: "Article updated successfully."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @article.destroy
      redirect_to admin_articles_path, notice: "Article deleted."
    end

    private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :author, :body, :published_at, :cover_image_url, :excerpt, :status)
    end
  end
end
