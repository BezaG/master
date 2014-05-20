class Mushroom < ActiveRecord::Base
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validates_presence_of :reciept, :message => "can't be blank"
  validates_presence_of :day_of_supply, :message => "can't be blank"

  has_many :mushroom_order
end
