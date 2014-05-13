class Honey < ActiveRecord::Base
  validates_presence_of :user, :message => "can't be blank"
  validates_presence_of :tel, :message => "can't be blank"
  validates_presence_of :company, :message => "can't be blank"
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :type_of_honey, :message => "can't be blank"
  validates_presence_of :quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  validates_presence_of :reciept, :message => "can't be blank"
  validates_presence_of :condition, :message => "can't be blank"

  has_many :honey_order
end
