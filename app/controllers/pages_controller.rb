class PagesController < ApplicationController
  helper_method :project_skills

  def home
    @projects = Project.last(10)
  end

  def project_skills(project)
    skills = []
    project.contributions.each do |contribution|
      contribution.skills.each { |skill| skills << skill.name}
    end
    skills.uniq
  end
end
