# frozen_string_literal: true

class InvestorsController < ApplicationController
  def index
    @investors = Investor.order(created_at: :desc)
  end

  def new
    @investor = Investor.new
  end

  def create
    @investor = Investor.new(investor_params)
    if @investor.save
      redirect_to investors_path, notice: "Your investor profile request was received. We'll be in touch soon."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def investor_params
    params.require(:investor).permit(:firm_name, :contact_name, :email, :values, :investment_focus, :portfolio_highlights, :request_for_startups, :website)
  end
end
