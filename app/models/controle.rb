class Controle < ActiveRecord::Base
  attr_accessible :date, :description, :matiere_id, :notemax, :name

  belongs_to :matiere
  has_many :notes

end
