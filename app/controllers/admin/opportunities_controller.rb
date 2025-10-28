# frozen_string_literal: true

module Admin
  class OpportunitiesController < BaseController
    before_action :set_opportunity, only: %i[show edit update destroy approve reject]

    def index
      @opportunities = Opportunity.order(created_at: :desc)
    end

    def show; end

    def new
      @opportunity = Opportunity.new
    end

    def edit; end

    def create
      @opportunity = Opportunity.new(opportunity_params)
      if @opportunity.save
        redirect_to admin_opportunity_path(@opportunity), notice: "Opportunity created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @opportunity.update(opportunity_params)
        redirect_to admin_opportunity_path(@opportunity), notice: "Opportunity updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @opportunity.destroy
      redirect_to admin_opportunities_path, notice: "Opportunity removed."
    end

    def approve
      @opportunity.approved!
      redirect_to admin_opportunities_path, notice: "Opportunity approved."
    end

    def reject
      @opportunity.rejected!
      redirect_to admin_opportunities_path, notice: "Opportunity rejected."
    end

    private

    def set_opportunity
      @opportunity = Opportunity.find(params[:id])
    end

    def opportunity_params
      params.require(:opportunity).permit(:category, :title, :full_name, :organization, :description, :link, :status)
    end
  end
end
