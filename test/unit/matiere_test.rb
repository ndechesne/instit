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

require 'test_helper'

class MatiereTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
