class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :lastName
      t.string :firstName
      t.datetime :birth
      t.text :addr

      t.timestamps
    end
  end
end
