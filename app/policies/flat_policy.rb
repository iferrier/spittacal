class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all if user.admin || user.housecaretaker
    end
  end

  def create?
    user_is_allowed?
  end

  def show?
    user_is_allowed?
  end

  def update?
    user_is_allowed?
  end

  def destroy?
    user_is_allowed?
  end

  def housecaretaker_profile?
    user_is_allowed?
  end

  private

  def user_is_allowed?
    user.housecaretaker || user.admin
  end
end
