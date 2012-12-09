class Eleve < ActiveRecord::Base
  attr_accessible :addr, :birth, :firstName, :lastName

  validates :firstName, :presence => true
  validates :lastName, :presence => true
  validates :gender, :presence => true

  has_many :notes
end
