class BuildingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def user_is_owner_or_admin?
    record.user == user || user.admin
  end

  # def user_is_owner_or_admin?
  #   record.user == user || user.admin
  # end
end
