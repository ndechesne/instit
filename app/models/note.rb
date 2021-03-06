# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  note        :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  student_id  :integer
#  comment     :text
#  controle_id :integer
#

class Note < ActiveRecord::Base
  attr_accessible :dateNote, :note, :subject, :student_id, :controle_id, :misc

  validates :note, :presence => true, :numericality => true
  validates :controle_id, :presence => true
  validates :student_id, :presence => true

  validate :validate_note

  belongs_to :student
  belongs_to :controle

  def validate_note
    errors.add('Note invalide!') if self.note > controle.notemax
  end 

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
