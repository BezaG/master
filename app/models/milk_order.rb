class MilkOrder < ActiveRecord::Base
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :daily_quantity, :message => "can't be blank"
  validates_numericality_of :daily_quantity, less_than_or_equal_to: -> (milk){milk.daily_quantity }
  validates_presence_of :price, :message => "can't be blank"
  
  belongs_to :milk
end
