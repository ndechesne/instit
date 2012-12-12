class AddReallyNameToControle < ActiveRecord::Migration
  def change
    add_column :controles, :name, :string
  end
end
