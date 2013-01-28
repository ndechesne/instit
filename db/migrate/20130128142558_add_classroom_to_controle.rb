class AddClassroomToControle < ActiveRecord::Migration
  def change
    add_column :controles, :classroom_id, :integer
  end
end
