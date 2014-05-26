class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    
     if user.role == "admin"
      can :manage, :all 
     
     elsif user.role == "buyer"
      
      can :read, Egg
      can :create, EggOrder
      can [:update,:read,:delete], EggOrder, :user_id => user.id
      
      can :read, Honey
      can :create, HoneyOrder
      can [:update, :delete, :read], HoneyOrder, :user_id => user.id
      
      can :read, Milk
      can :create, MilkOrder
      can [:update, :delete, :read], MilkOrder, :user_id => user.id

      can :read, Mushroom
      can :create, MushroomOrder
      can [:update, :delete, :read], MushroomOrder, :user_id => user.id
     
    
      
     elsif user.role == "seller"

      can [ :read, :create ], Egg
      can [:read, :update ], EggOrder, :egg => { :user_id => user.id }
      can [:update,:delete], Egg, :user_id => user.id
      
      can [:create,:read], Honey
      can [:read, :update], HoneyOrder, :honey => { :user_id => user.id }
      can [:update,:delete], Honey, :user_id => user.id
      
      can [:create,:read], Milk
      can [:read, :update ], MilkOrder
      can [:update,:delete], Milk, :user_id => user.id
     
      can [:create,:read], Mushroom
      can [:read, :update ], MushroomOrder
      can [:update,:delete], Mushroom, :user_id => user.id
     
    else

      can :read, Egg
      can :read, Honey
      can :read, Milk
      can :read, Mushroom
      
    end
  

    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/bryanrite/cancancan/wiki/Defining-Abilities
  end
end