class ChangeDateFormatInStudent < ActiveRecord::Migration
  def up
    change_column :students, :birth, :date
  end

  def down
  end
end
