# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  lastName   :string(255)
#  firstName  :string(255)
#  birth      :datetime
#  addr       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gender     :string(255)
#

class Student < ActiveRecord::Base
  attr_accessible :addr, :birth, :firstName, :lastName, :gender

  validates :firstName, :presence => true
  validates :lastName, :presence => true
  validates :gender, :presence => true

  has_many :notes, :dependent => :destroy

  def full_name
     "#{firstName} #{lastName}"
  end

  # available genders
  def self.genders
     ['M', 'F']
  end

end
