class CreateUserFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :user_favourites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
