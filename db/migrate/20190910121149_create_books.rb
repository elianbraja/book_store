class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :publisher
      t.integer :number_of_pages
      t.date :date_of_publication
      t.integer :author

      t.timestamps
    end
  end
end
