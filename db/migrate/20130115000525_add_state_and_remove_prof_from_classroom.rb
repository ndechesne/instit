class AddStateAndRemoveProfFromClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :state, :string
    remove_column :classrooms, :prof
  end
end
