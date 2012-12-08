class Eleve < ActiveRecord::Base
  attr_accessible :addr, :birth, :firstName, :lastName

  validates :firstName, :presence => true
  validates :lastName, :presence => true


end
