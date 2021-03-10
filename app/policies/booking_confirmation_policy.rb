class BookingConfirmationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
    def new
      record.present?
    end
  end
end
