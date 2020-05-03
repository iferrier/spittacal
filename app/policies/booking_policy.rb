class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all if user.admin || user.housecaretaker || record.user == user
    end
  end
end
