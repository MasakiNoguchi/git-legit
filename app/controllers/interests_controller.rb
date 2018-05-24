class InterestsController < ApplicationController
  def create
    contribution = Contribution.find(params[:contribution_id])
    interest = Interest.new
    interest.user = current_user
    interest.contribution = contribution
    authorize interest
    interest.save
    redirect_to contribution_path(contribution)
  end
end
