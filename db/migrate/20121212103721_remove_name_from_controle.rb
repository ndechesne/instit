class RemoveNameFromControle < ActiveRecord::Migration
  def up
    remove_column :controles, :name
  end

  def down
    add_column :controles, :name, :text
  end
end
