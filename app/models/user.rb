class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        has_many :egg
        has_many :egg_order
        has_many :honey
        has_many :honey_order
        has_many :milk
        has_many :milk_order 
  
   
  ROLES = %w[admin buyer seller]
  
  def role_symbols
    [role.to_sym]
  end

end
