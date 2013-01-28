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
  belongs_to :user
  validates :user_id, :presence => true

  has_many :controles, :dependent => :destroy
  has_and_belongs_to_many :students

  def active?
    state == 'active'
  end

  # available states
  def self.states
     ['active', 'archived']
  end

end
