class Mushroom < ActiveRecord::Base
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validates_presence_of :reciept, :message => "can't be blank"
  validates_presence_of :day_of_supply, :message => "can't be blank"
  validate :supply_could_not_be_less_than_zero

  has_many :mushroom_orders
  belongs_to :user
  private
    def supply_could_not_be_less_than_zero
      errors.add(:quantity, "should not be less than zero") if quantity < 1
    end
  end
end
