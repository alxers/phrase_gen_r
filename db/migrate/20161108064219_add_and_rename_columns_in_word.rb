class AddAndRenameColumnsInWord < ActiveRecord::Migration
  def change
    rename_column :words, :name, :noun
    add_column :words, :adjective, :string
  end
end
