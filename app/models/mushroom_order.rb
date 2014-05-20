class MushroomOrder < ActiveRecord::Base
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validate :quantity_is_less_than_supply
  validate :price_must_be_more

  belongs_to :mushroom
  

  private
   def price_must_be_more
    errors.add(:price, "should be more than offer") if price < mushroom.price
   end

   def quantity_is_less_than_supply
    errors.add(:quantity, "should be less than supply") if quantity > mushroom.quantity
   end
end
