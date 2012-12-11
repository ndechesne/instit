class Note < ActiveRecord::Base
  attr_accessible :dateNote, :note, :subject, :student_id, :controle_id, :misc

  validates :note, :presence => true
  #TODO: validate note <= noteMax

  belongs_to :student
  belongs_to :controle

end
