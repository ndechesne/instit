class ClassroomMatiereHasManyTable < ActiveRecord::Migration
  def change
    create_table :classrooms_matieres, :id => false do |t|
      t.integer :classroom_id
      t.integer :matiere_id
    end
  end
end
