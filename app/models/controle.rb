# == Schema Information
#
# Table name: controles
#
#  id           :integer          not null, primary key
#  date         :datetime
#  matiere_id   :integer
#  notemax      :decimal(, )
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  name         :string(255)
#  classroom_id :integer
#

class Controle < ActiveRecord::Base
  attr_accessible :date, :description, :matiere_id, :notemax, :name, :classroom_id

  belongs_to :matiere
  belongs_to :classroom
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

  def matiere
    Matiere.find_by_id(matiere_id).name
  end


end
