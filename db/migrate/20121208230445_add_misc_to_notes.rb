class AddMiscToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :misc, :text
  end
end
