class DropAuthor < ActiveRecord::Migration[6.0]
  def change
    drop_table :authors
  end
end
