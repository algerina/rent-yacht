class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, Yacht
    else
      can :manage, Reservation, user_id: user.id
      can :read, Yacht
    end
  end
end
