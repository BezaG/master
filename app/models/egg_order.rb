class EggOrder < ActiveRecord::Base
  
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :daily_quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  
  validates_numericality_of :daily_quantity, less_than_or_equal_to: -> (egg){egg.daily_quantity }
  belongs_to :egg

end
