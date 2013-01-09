# == Schema Information
#
# Table name: classrooms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  prof       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Classroom < ActiveRecord::Base
  attr_accessible :name, :prof

end
