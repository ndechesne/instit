class AddNameToControle < ActiveRecord::Migration
  def change
    add_column :controles, :name, :text
  end
end
