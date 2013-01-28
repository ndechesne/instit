# == Schema Information
#
# Table name: matieres
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  classroom_id :integer
#  user_id      :integer
#

class Matiere < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :controles, :dependent => :destroy
  has_and_belongs_to_many :classrooms
  belongs_to :user

  validates :name, :uniqueness => true
  validates :user_id, :presence => true
  validates :classroom_id, :presence => true

end
