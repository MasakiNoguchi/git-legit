class ProjectsController < ApplicationController
  def index
    if params[:query].present?
      @projects = Project.search(title: params[:query])
    else
      @projects = Project.all
    end
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
    @skills = []
    @project.contributions.each do |contribution|
      contribution.skills.each { |skill| @skills << skill}
    end
    @skills.uniq
  end

  def edit
    @project = Project.find(params[:id])
    authorize @project
  end

  def update
    @project = Project.find(params[:id])
    authorize @project
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project
    if @project.save
      Project.reindex
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy
    @project = Project.find(params[:id])
    authorize @project
    @project.destroy
    redirect_to user_path(current_user)
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :guidelines, :github_url, :photo)
  end
end
