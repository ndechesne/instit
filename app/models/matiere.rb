class Matiere < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :controles, :dependent => :destroy

  validates :name, :uniqueness => true

end
