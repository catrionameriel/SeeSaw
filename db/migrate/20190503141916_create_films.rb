class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.boolean :seen
      t.integer :rating
      t.date :date_seen
      t.date :release_date
      t.timestamps
    end
  end
end
