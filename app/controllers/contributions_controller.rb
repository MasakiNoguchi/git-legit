class ContributionsController < ApplicationController
  def show
    @contribution = Contribution.find(params[:id])
    authorize @contribution
  end

  def new
    @project = Project.find(params[:project_id])
    @contribution = Contribution.new
    @contribution.project = @project
    authorize @contribution
  end

  def create
    @project = Project.find(params[:project_id])
    @contribution = Contribution.new(contribution_params)
    @contribution.project = @project
    authorize @contribution

    if @contribution.save
      redirect_to contribution_path(@contribution)
    else
      render :new
    end
  end

  def edit
    @contribution = Contribution.find(params[:id])
    authorize @contribution
  end

  def update
    @contribution = Contribution.find(params[:id])
    @contribution.status = "booked" unless @contribution.user.nil?
    authorize @contribution
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

  def remove_user
    @contribution.user = nil
  end

  private

  def contribution_params
    params.require(:contribution).permit(:description, :title, :guidelines, :status, :user_id)
  end
end
