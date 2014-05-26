class Egg < ActiveRecord::Base
  
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :type_of_egg, :message => "can't be blank"
  validates_presence_of :daily_quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validates_presence_of :reciept, :message => "can't be blank"

  has_many :egg_orders
  belongs_to :user
end
