class Note < ActiveRecord::Base
  attr_accessible :dateNote, :note, :subject, :student_id, :controle_id, :misc

  validates :note, :presence => true
  validates :controle_id, :presence => true
  #TODO: validate note <= noteMax

  belongs_to :student
  belongs_to :controle

  def controle
    Controle.find_by_id(controle_id)
  end
  
  def matiere
    Matiere.find_by_id(controle.matiere_id)
  end

  def student
    Student.find_by_id(student_id)
  end

end
