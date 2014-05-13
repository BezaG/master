class EggOrder < ActiveRecord::Base
  validates_presence_of :user, :message => "can't be blank"
  validates_presence_of :tel, :message => "can't be blank"
  validates_presence_of :company, :message => "can't be blank"
  validates_presence_of :location, :message => "can't be blank"
  validates_presence_of :daily_quantity, :message => "can't be blank"
  validates_presence_of :price, :message => "can't be blank"
  
  belongs_to :egg

end
