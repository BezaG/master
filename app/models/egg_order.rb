class EggOrder < ActiveRecord::Base
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :daily_quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validate :quantity_is_less_than_supply
  validate :price_must_be_more

  belongs_to :egg
  
# other model methods

private
  def price_must_be_more
    errors.add(:price, "should be more than offer") if price < egg.price
  end

  def quantity_is_less_than_supply
    errors.add(:daily_quantity, "should be less than supply") if daily_quantity > egg.daily_quantity
  end
end
