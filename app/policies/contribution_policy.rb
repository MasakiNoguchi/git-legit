class ContributionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    record.project.user == user
  end

  def create?
    new?
  end

  def edit?
    record.project.user == user
  end

  def update?
    edit?
  end
end
