class Classroom < ActiveRecord::Base
  attr_accessible :name, :user_id, :state
  belongs_to :user
  validates :user_id, :presence => true

  def active?
    state == 'active'
  end


  # available states
  def self.states
     ['active', 'archived']
  end

end
