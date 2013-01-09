# == Schema Information
#
# Table name: matieres
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Matiere < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :controles, :dependent => :destroy

  validates :name, :uniqueness => true

end
