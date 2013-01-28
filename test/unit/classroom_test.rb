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

require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
