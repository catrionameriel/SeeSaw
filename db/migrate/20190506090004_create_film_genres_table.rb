class CreateFilmGenresTable < ActiveRecord::Migration[5.2]
  def change
    create_table :film_genres do |t|
      t.integer :film_id
      t.integer :genre_id
      t.timestamps
    end

    add_index :film_genres, [:film_id, :genre_id]
  end
end
