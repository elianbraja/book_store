class DropElianis < ActiveRecord::Migration[6.0]
  def change
    drop_table :elianis
  end
end
