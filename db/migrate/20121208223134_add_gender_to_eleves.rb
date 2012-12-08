class AddGenderToEleves < ActiveRecord::Migration
  def change
    add_column :eleves, :gender, :string
  end
end
