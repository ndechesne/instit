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

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
