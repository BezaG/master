class Egg < ActiveRecord::Base
  validates_presence_of :user, :message => "can't be blank"
  validates_presence_of :tel, :message => "can't be blank"
  validates_presence_of :company, :message => "can't be blank"
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :type, :message => "can't be blank"
  validates_presence_of :daily_quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validates_presence_of :reciept, :message => "can't be blank"

  has_many :egg_order
end