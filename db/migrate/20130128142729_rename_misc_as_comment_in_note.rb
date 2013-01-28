class RenameMiscAsCommentInNote < ActiveRecord::Migration
  def up
    rename_column :notes, :misc, :comment
  end

  def down
  end
end
