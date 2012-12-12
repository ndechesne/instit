class Student < ActiveRecord::Base
  attr_accessible :addr, :birth, :firstName, :lastName, :gender

  validates :firstName, :presence => true
  validates :lastName, :presence => true
  validates :gender, :presence => true

  has_many :notes

  def full_name
     "#{firstName} #{lastName}"
  end

end
