class BuildingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user_is_admin?)
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
    true
  end

  private

  def user_is_admin?
    user.admin
  end
end
