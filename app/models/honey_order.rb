class HoneyOrder < ActiveRecord::Base

  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :amount, :message => "can't be blank"
  validates_numericality_of :amount, less_than_or_equal_to: -> (honey){honey.amount }
  validates_presence_of :price, :message => "can't be blank"
  
  belongs_to :honey
end
