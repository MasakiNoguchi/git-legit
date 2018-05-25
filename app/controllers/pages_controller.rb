class PagesController < ApplicationController
  helper_method :project_skills

  def home
    if params[:query].present?
      @projects = Project.search(params[:query])
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js  # <-- will render `app/views/pages/home.js.erb`
      end
    else
      @projects = Project.all
    end
  end

  def project_skills(project)
    skills = []
    project.contributions.each do |contribution|
      contribution.skills.each { |skill| skills << skill}
    end
    skills.uniq
  end
end
