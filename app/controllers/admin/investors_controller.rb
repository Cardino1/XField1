# frozen_string_literal: true

module Admin
  class InvestorsController < BaseController
    before_action :set_investor, only: %i[show edit update destroy]

    def index
      @investors = Investor.order(:name)
    end

    def show; end

    def new
      @investor = Investor.new
    end

    def edit; end

    def create
      @investor = Investor.new(investor_params)
      if @investor.save
        redirect_to admin_investor_path(@investor), success: "Investor profile created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @investor.update(investor_params)
        redirect_to admin_investor_path(@investor), success: "Investor profile updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @investor.destroy
      redirect_to admin_investors_path, success: "Investor removed."
    end

    private

    def set_investor
      @investor = Investor.find(params[:id])
    end

    def investor_params
      params.require(:investor).permit(:name, :values, :focus, :portfolio_highlights, :request_for_startups, :website, :featured)
    end
  end
end
