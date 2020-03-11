class BuildingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all if user.admin
    end
  end

  def create?
    user_is_admin?
  end

  def show?
    user_is_admin?
  end

  def update?
    user_is_admin?
  end

  def destroy?
    user_is_admin?
  end

  def profile?
    user_is_admin?
  end

  private

  def user_is_admin?
    user.admin
  end
end
