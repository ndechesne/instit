class Note < ActiveRecord::Base
  attr_accessible :dateNote, :note, :subject

  validates :note, :presence => true
  #TODO: validate note <= noteMax

  belongs_to :eleve
  belongs_to :controle

end
