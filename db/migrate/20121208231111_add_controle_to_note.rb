class AddControleToNote < ActiveRecord::Migration
  def change
    add_column :notes, :controle_id, :integer
  end
end
