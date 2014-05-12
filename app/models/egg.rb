class Egg < ActiveRecord::Bases
  validates :user, :presence => true
  validates :tel, :presence => true
  validates :company, :presence => true
  validates :location, :presence => true
  validates :type, :presence => true
  validates :daily_quantity, :presence => true
  validates :price, :presence => true
  validates :reciept, :presence => true

  has_many :egg_order
end