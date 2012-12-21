class Controle < ActiveRecord::Base
  attr_accessible :date, :description, :matiere_id, :notemax, :name

  belongs_to :matiere
  has_many :notes, :dependent => :destroy

  def average
    sum = 0.0
    notes.each { |n| sum += Note.find_by_id(n).note }
    avg = sum / notes.size
    avg.round(1)
  end
  
  def nb_notes
    notes.size
  end

  def full_name
    "#{Matiere.find_by_id(matiere_id).name}: #{name}"
  end

end
