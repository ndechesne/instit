# == Schema Information
#
# Table name: classrooms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  state      :string(255)
#

class Classroom < ActiveRecord::Base
  attr_accessible :name, :user_id, :state

  validates :user_id, :presence => true

  belongs_to :user
  has_many :controles, :dependent => :destroy
  has_and_belongs_to_many :students
  has_and_belongs_to_many :matieres
  
  def active?
    state == 'active'
  end

  # available states
  def self.states
     ['active', 'archived']
  end

end
