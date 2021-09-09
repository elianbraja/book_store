class CreatePrivateTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :private_tokens do |t|
      t.string :token
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
