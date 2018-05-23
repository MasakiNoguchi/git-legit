class PagesController < ApplicationController
  def home
    @projects = Project.last(10)
  end
end
