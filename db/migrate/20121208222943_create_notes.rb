class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.datetime :dateNote
      t.string :subject
      t.decimal :note

      t.timestamps
    end
  end
end
