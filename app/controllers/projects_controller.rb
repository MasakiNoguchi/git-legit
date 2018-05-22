class ProjectsController < ApplicationController

  def edit
    @project = Project.find(params[:id])
    redirect_to edit_project_path(@project)
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end
end
