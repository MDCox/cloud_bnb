class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    elsif user.owner? || user.renter?
      can :read, :all
      can :create, Property, Rental
      can :update, Property do |property|
        property.try(:user) == user
      end
      can :destroy, Property do |property|
        property.try(:user) == user
      end
    else
      can :read, :all
    end
  end
end
