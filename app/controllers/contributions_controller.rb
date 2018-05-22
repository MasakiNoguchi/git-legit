class ContributionsController < ApplicationController
  def show
    @contribution = Contribution.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @contribution = Contribution.new
  end

  def create
    @project = Project.find(params[:project_id])
    @contribution = Contribution.new(contribution_params)
    @contribution.project = @project

    if @contribution.save
      redirect_to contribution_path(@contribution)
    else
      render :new
    end
  end

  def edit
    @contribution = Contribution.find(params[:id])
  end

  def update
    @contribution = Contribution.find(params[:id])
    if @contribution.update(contribution_params)
      redirect_to contribution_path(@contribution)
    else
      render :edit
    end
  end

  def destroy
    @contribution = Contribution.find(params[:id])
    @contribution.destroy
  end

  private

  def contribution_params
    params.require(:contribution).permit(:description, :title, :guidelines, :status)
  end
end
