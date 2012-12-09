class RemoveSubFromNote < ActiveRecord::Migration
  def up
    remove_column :notes, :subject
  end

  def down
  end
end
