class Honey < ActiveRecord::Base
  
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :honey_type, :message => "can't be blank"
  validates_presence_of :amount, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validates_presence_of :reciept, :message => "can't be blank"
  validates_presence_of :condition, :message => "can't be blank"

  has_many :honey_order
end
