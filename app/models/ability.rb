class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    
     if user.role == "admin"
      can :manage, :all 
     
   
    elsif user.role == "buyer"
      can [:create,:read], EggOrder
      can :read, Egg
      can :update, EggOrder, :user_id => user.id
      can :delete, EggOrder do |egg_order|
        egg_order.try(:user) == user 
      end
      can [:create,:read], HoneyOrder
      can :read, Honey
      can :update, HoneyOrder do |honey_order|
        honey_order.try(:user) == user 
      end
      can :delete, HoneyOrder do |honey_order|
        honey_order.try(:user) == user 
      end
      can [:create,:read], MilkOrder
      can :read, Milk
      can :update, MilkOrder do |milk_order|
        milk_order.try(:user) == user 
      end
      can :delete, MilkOrder do |milk_order|
        milk_order.try(:user) == user 
      end
      can [:create,:read], MushroomOrder
      can :read, Mushroom
      can :update, MushroomOrder do |mushroom_order|
        mushroom_order.try(:user) == user 
      end
      can :delete, MushroomOrder do |mushroom_order|
        mushroom_order.try(:user) == user 
      end
    
      
    elsif user.role == "seller"
      can [ :read, :create ], Egg
      can [:read, :update ], EggOrder
      can :update, Egg do |egg|
        egg.try(:user) == user
      end
      can :delete, Egg do |egg|
        egg.try(:user) == user
      end
      can [:create,:read], Honey
      can [:read, :update ], HoneyOrder
      can :update, Honey do |honey|
        honey.try(:user) == user 
      end
      can :delete, Honey do |honey|
        honey.try(:user) == user 
      end
      can [:create,:read], Milk
      can [:read, :update ], MilkOrder
      can :update, Milk do |milk|
        milk.try(:user) == user 
      end
      can :delete, Milk do |milk|
        milk.try(:user) == user 
      end
        can [:create,:read], Mushroom
      can [:read, :update ], MushroomOrder
      can :update, Mushroom do |mushroom|
        mushroom.try(:user) == user 
      end
      can :delete, Mushroom do |mushroom|
        mushroom.try(:user) == user 
      end
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