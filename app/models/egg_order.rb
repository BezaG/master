class EggOrder < ActiveRecord::Base
  validates :user, :presence => true
  validates :tel, :presence => true
  validates :company, :presence => true
  validates :location, :presence => true
  validates :daily_quantity, :presence => true
  validates :price, :presence => true
  
  belongs_to :egg
end
