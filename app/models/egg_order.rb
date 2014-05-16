class EggOrder < ActiveRecord::Base
  validate :order_is_less_than_supply
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :daily_quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validates_numericality_of :daily_quantity, :only_integer => true, :greater_than_or_equal_to => 0
  
  belongs_to :egg

  private 
  def order_is_less_than_supply
    errors.add(:daily_quantity, "Should be less than supply") if daily_quantity > egg.daily_quantity
  end
end
