class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def user_profile?
    true
  end

  def housecaretaker_profile?
    true
  end

  def admin_profile?
    true
  end
end
