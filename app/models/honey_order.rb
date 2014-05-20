class HoneyOrder < ActiveRecord::Base
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :amount, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validate :quantity_is_less_than_supply
  validate :price_must_be_more
  
  belongs_to :honey
  belongs_to :user
  

  private
   def price_must_be_more
    errors.add(:price, "should be more than offer") if price < honey.price
   end

  def quantity_is_less_than_supply
    errors.add(:amount, "should be less than supply") if amount > honey.amount
  end
end
