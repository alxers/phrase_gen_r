class AddKindToWord < ActiveRecord::Migration
  def change
    remove_column :words, :noun, :string
    remove_column :words, :adjective, :string
    add_column :words, :kind, :string
    add_column :words, :word, :string
  end
end
