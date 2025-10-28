# frozen_string_literal: true

class InvestorsController < ApplicationController
  def index
    @investors = Investor.featured.order(:name)
    @investor = Investor.new
  end

  def new
    @investor = Investor.new
  end

  def create
    @investor = Investor.new(investor_params)
    if @investor.save
      redirect_to investors_path, notice: "Thanks! We'll review your VC profile soon."
    else
      @investors = Investor.featured.order(:name)
      render :index, status: :unprocessable_entity
    end
  end

  private

  def investor_params
    params.require(:investor).permit(:name, :values, :focus, :portfolio_highlights, :request_for_startups, :website, :featured)
  end
end
