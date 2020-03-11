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

  def housecaretaker_profile?
    user_is_housecaretaker?
  end

  private

  def user_is_admin?
    user.admin
  end

  def user_is_housecaretaker?
    user.housecaretaker
  end
end
