# frozen_string_literal: true

module Admin
  class InvestorsController < BaseController
    def index
      @investors = Investor.order(created_at: :desc)
    end

    def destroy
      investor = Investor.find(params[:id])
      investor.destroy
      redirect_to admin_investors_path, notice: "Investor profile removed."
    end
  end
end
