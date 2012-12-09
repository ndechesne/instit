class RemoveDateFromNote < ActiveRecord::Migration
  def up
    remove_column :notes, :dateNote
  end

  def down
    add_column :notes, :dateNote, :datetime
  end
end
