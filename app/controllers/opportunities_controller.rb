# frozen_string_literal: true

class OpportunitiesController < ApplicationController
  def index
    @types = Opportunity.opportunity_types.keys
    @selected_type = params[:type]
    @opportunities = Opportunity.approved.latest
    if @selected_type.present? && Opportunity.opportunity_types.key?(@selected_type)
      @opportunities = @opportunities.public_send(@selected_type)
    end
  end

  def new
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = Opportunity.new(opportunity_params)
    if @opportunity.save
      redirect_to opportunities_path, notice: "Thanks! Our team will review your submission shortly."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def opportunity_params
    params.require(:opportunity).permit(:opportunity_type, :title, :full_name, :organization, :description, :link)
  end
end
