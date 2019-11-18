class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :res_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
