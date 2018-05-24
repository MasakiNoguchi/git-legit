class RequirementsController < ApplicationController
  def new
    @contribution = Contribution.find(params[:contribution_id])
    @requirement = Requirement.new
    @requirement.contribution = @contribution
    authorize @requirement
  end

  def create
    @contribution = Contribution.find(params[:contribution_id])
    @requirement = Requirement.new(requirement_params)
    @requirement.contribution = @contribution
    authorize @requirement

    if @requirement.save
      redirect_to contribution_path(@contribution)
    else
      render :new
    end
  end

  def destroy
    @requirement = Requirement.find(params[:id])
    @requirement.destroy
  end

  private

  def requirement_params
    params.require(:requirement).permit(:skill_id)
  end
end
