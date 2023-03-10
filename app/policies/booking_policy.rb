class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end

  def create?
    true
  end

  def booking_update?
    record.listing.user == user
  end

  def incoming_booking_update?
    record.user == user
  end
end
