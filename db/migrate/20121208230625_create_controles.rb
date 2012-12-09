class CreateControles < ActiveRecord::Migration
  def change
    create_table :controles do |t|
      t.datetime :date
      t.integer :matiere_id
      t.decimal :notemax
      t.text :description

      t.timestamps
    end
  end
end
