class ChangeDateType < ActiveRecord::Migration[6.0]
  def change
      change_column :books, :date_of_publication, :datetime
  end
end
