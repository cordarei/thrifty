class Purchase < ActiveRecord::Base
  attr_accessible :date, :amount, :comment

  validates :date, :presence => true
  validates :amount, :presence => true
  validates :comment, :length => {:maximum => 100}
end
