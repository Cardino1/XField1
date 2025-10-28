# frozen_string_literal: true

class OpportunitiesController < ApplicationController
  def index
    @filters = Opportunity.categories
    @selected_filter = params[:type]
    scope = Opportunity.approved.order(created_at: :desc)
    scope = scope.where(category: params[:type]) if params[:type].present?
    @opportunities = scope
  end

  def show
    @opportunity = Opportunity.approved.find(params[:id])
  end

  def new
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = Opportunity.new(opportunity_params)
    @opportunity.status = :pending
    if @opportunity.save
      redirect_to opportunities_path, notice: "Thank you! Your opportunity will be reviewed by our team."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def opportunity_params
    params.require(:opportunity).permit(:category, :title, :full_name, :organization, :description, :link)
  end
end
