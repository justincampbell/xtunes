class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user

      if user.role? :admin
      can :manage, :all
    else
      can :read, :all
    end
      if user.role? :member
        can :purchase, Song
      else
        cannot :purchase, Song
      end
  end
end