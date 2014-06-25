class Honey < ActiveRecord::Base
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :honey_type, :message => "can't be blank"
  validates_presence_of :amount, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validates_presence_of :reciept, :message => "can't be blank"
  validates_presence_of :condition, :message => "can't be blank"
  validates :supply_could_not_be_less_than_zero

  has_many :honey_orders
  belongs_to :user
   private
    def supply_could_not_be_less_than_zero
      errors.add(:amount, "should not be less than zero") if amount < 1
    end
  end
end
