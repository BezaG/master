class Egg < ActiveRecord::Base
  
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :type_of_egg, :message => "can't be blank"
  validates_presence_of :daily_quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validates_presence_of :reciept, :message => "can't be blank"
  validate :supply_could_not_be_less_than_zero

  has_many :egg_orders
  belongs_to :user
  private
    def supply_could_not_be_less_than_zero
      errors.add(:daily_quantity, "should not be less than zero") if daily_quantity < 1
    end
  end

