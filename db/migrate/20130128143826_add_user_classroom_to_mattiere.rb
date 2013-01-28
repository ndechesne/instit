class AddUserClassroomToMattiere < ActiveRecord::Migration
  def change
    add_column :matieres, :classroom_id, :integer
    add_column :matieres, :user_id, :integer
  end
end
