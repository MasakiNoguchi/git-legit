class RequirementPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    record.contribution.project.user == user
  end

  def create?
    new?
  end
end
