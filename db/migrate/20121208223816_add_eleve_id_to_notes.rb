class AddEleveIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :eleve_id, :integer
  end
end
