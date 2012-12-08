class CreateEleves < ActiveRecord::Migration
  def change
    create_table :eleves do |t|
      t.string :lastName
      t.string :firstName
      t.datetime :birth
      t.text :addr

      t.timestamps
    end
  end
end
